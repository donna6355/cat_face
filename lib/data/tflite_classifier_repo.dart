import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import './tflite_classifier_model.dart';
import './tflite_classifier.dart';
import '../core/core.dart';
import './mood_result_model.dart';

class ClassifierRepo {
  ClassifierRepo._();
  static Classifier? _classifier;

  static Future<void> classifyImg({
    required String path,
    required BuildContext ctx,
  }) async {
    _classifier ??= await Classifier.loadWith(
      labelsFileName: Assets.tfLabel,
      modelFileName: Assets.tfModel,
    );
    final image = img.decodeImage(File(path).readAsBytesSync())!;
    final ClassifierResult res = _classifier!.predict(image);
    await Future.delayed(const Duration(seconds: 2));
    final MoodRes arg = MoodRes.fromRes(file: path, res: res, ctx: ctx);
    Navigator.of(ctx).pushReplacementNamed(NamedRoutes.mood, arguments: arg);
  }
}
