import 'package:flutter/material.dart';

import './tflite_classifier_model.dart';
import '../../core/core.dart';

class MoodRes {
  final String file;
  final String header;
  final String description;
  final String contents;
  final String icon;

  const MoodRes({
    required this.file,
    required this.header,
    required this.description,
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
    final Map<String, String> description = {
      'peace': Languages.of(ctx)!.peaceCatDescription,
      'yawn': Languages.of(ctx)!.yawnCatDescription,
      'angry': Languages.of(ctx)!.angryCatDescription,
      'sleepy': Languages.of(ctx)!.sleepyCatDescription,
      'excited': Languages.of(ctx)!.excitedCatDescription,
    };
    final Map<String, String> contents = {
      'peace': Languages.of(ctx)!.peaceCatContents,
      'yawn': Languages.of(ctx)!.yawnCatContents,
      'angry': Languages.of(ctx)!.angryCatContents,
      'sleepy': Languages.of(ctx)!.sleepyCatContents,
      'excited': Languages.of(ctx)!.excitedCatContents,
    };
    final String label = res.label;
    return res.score < 0.8
        ? MoodRes(
            file: file,
            header: Languages.of(ctx)!.failed,
            description: Languages.of(ctx)!.failedDescription,
            contents: Languages.of(ctx)!.failedContents,
            icon: 'assets/images/failed_cat.png',
          )
        : MoodRes(
            file: file,
            header: header[label] ?? '',
            description: description[label] ?? '',
            contents: contents[label] ?? '',
            icon: 'assets/images/${label}_cat.png',
          );
  }
}
