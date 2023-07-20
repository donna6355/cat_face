import 'package:flutter/material.dart';

import '../components/components.dart';
import '../../core/core.dart';
import '../../data/tflite_classifier_repo.dart';

class Analyzing extends StatefulWidget {
  const Analyzing({super.key});

  @override
  State<Analyzing> createState() => _AnalyzingState();
}

class _AnalyzingState extends State<Analyzing> {
  @override
  Widget build(BuildContext context) {
    final String file = ModalRoute.of(context)!.settings.arguments as String;
    ClassifierRepo.classifyImg(path: file, ctx: context);
    return Material(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 88),
            OutlinedText(
              label: Languages.of(context)!.analyzing,
              forSmall: true,
            ),
          ],
        ),
      ),
    );
  }
}
