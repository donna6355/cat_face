import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../components/components.dart';

class MoodResult extends StatelessWidget {
  const MoodResult({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> res =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    return Material(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 48),
          child: Column(
            children: [
              OutlinedText(
                label: Languages.of(context)!.appName,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Image.file(File(res['file']!), width: 264),
              ),
              ParagraphText(res['mood']!),
            ],
          ),
        ),
      ),
    );
  }
}
