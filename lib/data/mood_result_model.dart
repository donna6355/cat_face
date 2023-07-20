import 'package:flutter/material.dart';

import './tflite_classifier_model.dart';
import '../../core/core.dart';

class MoodRes {
  final String file;
  final String header;
  final String contents;
  final String icon;

  const MoodRes({
    required this.file,
    required this.header,
    required this.contents,
    required this.icon,
  });

  factory MoodRes.fromRes({
    required String file,
    required ClassifierResult res,
    required BuildContext ctx,
  }) {
    final Map<String, String> header = {
      'peace': Languages.of(ctx)!.peaceCat,
      'yawn': Languages.of(ctx)!.yawnCat,
      'angry': Languages.of(ctx)!.angryCat,
      'sleepy': Languages.of(ctx)!.sleepyCat,
      'excited': Languages.of(ctx)!.excitedCat,
    };
    final Map<String, String> contents = {
      'peace': Languages.of(ctx)!.peaceCatContents,
      'yawn': Languages.of(ctx)!.yawnCatContents,
      'angry': Languages.of(ctx)!.angryCatContents,
      'sleepy': Languages.of(ctx)!.sleepyCatContents,
      'excited': Languages.of(ctx)!.excitedCatContents,
    };
    final String label = res.label;
    return res.score < 0.6
        ? MoodRes(
            file: file,
            header: Languages.of(ctx)!.failed,
            contents: Languages.of(ctx)!.failedContents,
            icon: 'icon',
          )
        : MoodRes(
            file: file,
            header: header[label]!,
            contents: contents[label]!,
            icon: 'icon',
          );
  }
}
