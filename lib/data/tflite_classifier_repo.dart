import 'dart:io';

import 'package:image/image.dart' as img;
import './tflite_classifier_model.dart';
import './tflite_classifier.dart';
import '../core/core.dart';

class ClassifierRepo {
  ClassifierRepo._();
  static Classifier? _classifier;

  static Future<void> classifyImg(String path) async {
    _classifier ??= await Classifier.loadWith(
      labelsFileName: Assets.tfLabel,
      modelFileName: Assets.tfModel,
    );
    final image = img.decodeImage(File(path).readAsBytesSync())!;
    final ClassifierResult res = _classifier!.predict(image);
  }
}
