import 'dart:io';

import 'package:flutter/material.dart';

import '../components/components.dart';
import '../../core/core.dart';
import '../../data/mood_result_model.dart';
import '../../logic/logic.dart';

class MoodResult extends StatelessWidget {
  const MoodResult({super.key});

  @override
  Widget build(BuildContext context) {
    final MoodRes res = ModalRoute.of(context)!.settings.arguments as MoodRes;
    return Material(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 48),
          child: Column(
            children: [
              OutlinedText(label: res.header),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Image.file(File(res.file), width: 264),
              ),
              ResultCard(
                  description: res.description,
                  contents: res.contents,
                  icon: res.icon),
              Text(
                Languages.of(context)!.warning,
                style: CommonStyle.warningText,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        NamedRoutes.home, (_) => false);
                    AdHelper.showFullAd();
                  },
                  style: CommonStyle.basicBtn,
                  child: Text(Languages.of(context)!.retry),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
