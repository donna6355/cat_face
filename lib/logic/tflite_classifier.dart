import 'dart:math';

import 'package:image/image.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

typedef ClassifierLabels = List<String>;

class Classifier {
  final ClassifierLabels _labels;
  final ClassifierModel _model;

  Classifier._({
    required ClassifierLabels labels,
    required ClassifierModel model,
  })  : _labels = labels,
        _model = model;

  static Future<Classifier?> loadWith({
    required String labelsFileName,
    required String modelFileName,
  }) async {
    try {
      final ClassifierLabels labels = await FileUtil.loadLabels(labelsFileName);
      final ClassifierModel model = await _loadModel(modelFileName);
      return Classifier._(labels: labels, model: model);
    } catch (e) {
      return null;
    }
  }

  static Future<ClassifierModel> _loadModel(String modelFileName) async {
    final interpreter = await Interpreter.fromAsset(modelFileName);

    // Get input and output shape from the model
    final inputShape = interpreter.getInputTensor(0).shape;
    final outputShape = interpreter.getOutputTensor(0).shape;

    // Get input and output type from the model
    final inputType = interpreter.getInputTensor(0).type;
    final outputType = interpreter.getOutputTensor(0).type;

    return ClassifierModel(
      interpreter: interpreter,
      inputShape: inputShape,
      outputShape: outputShape,
      inputType: inputType,
      outputType: outputType,
    );
  }

  void close() {
    _model.interpreter.close();
  }

  ClassifierCategory predict(Image image) {
    // Load the image and convert it to TensorImage for TensorFlow Input
    final inputImage = _preProcessInput(image);

    // Define the output buffer
    final outputBuffer = TensorBuffer.createFixedSize(
      _model.outputShape,
      _model.outputType,
    );

    // Run inference
    _model.interpreter.run(inputImage.buffer, outputBuffer.buffer);

    // Post Process the outputBuffer
    final resultCategories = _postProcessOutput(outputBuffer);
    final topResult = resultCategories.first;

    return topResult;
  }

  List<ClassifierCategory> _postProcessOutput(TensorBuffer outputBuffer) {
    final probabilityProcessor = TensorProcessorBuilder().build();

    probabilityProcessor.process(outputBuffer);

    final labelledResult = TensorLabel.fromList(_labels, outputBuffer);

    final categoryList = <ClassifierCategory>[];
    labelledResult.getMapWithFloatValue().forEach((key, value) {
      final category = ClassifierCategory(key, value);
      categoryList.add(category);
    });
    categoryList.sort((a, b) => (b.score > a.score ? 1 : -1));

    return categoryList;
  }

  TensorImage _preProcessInput(Image image) {
    // #1
    final inputTensor = TensorImage(_model.inputType);
    inputTensor.loadImage(image);

    // #2
    final minLength = min(inputTensor.height, inputTensor.width);
    final cropOp = ResizeWithCropOrPadOp(minLength, minLength);

    // #3
    final shapeLength = _model.inputShape[1];
    final resizeOp = ResizeOp(shapeLength, shapeLength, ResizeMethod.BILINEAR);

    // #4
    final normalizeOp = NormalizeOp(127.5, 127.5);

    // #5
    final imageProcessor = ImageProcessorBuilder()
        .add(cropOp)
        .add(resizeOp)
        .add(normalizeOp)
        .build();

    imageProcessor.process(inputTensor);

    // #6
    return inputTensor;
  }
}

class ClassifierCategory {
  final String label;
  final double score;

  ClassifierCategory(this.label, this.score);
}

class ClassifierModel {
  Interpreter interpreter;

  List<int> inputShape;
  List<int> outputShape;

  TfLiteType inputType;
  TfLiteType outputType;

  ClassifierModel({
    required this.interpreter,
    required this.inputShape,
    required this.outputShape,
    required this.inputType,
    required this.outputType,
  });
}
