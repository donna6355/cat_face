import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../components/components.dart';
import '../../core/core.dart';
import '../../data/tflite_classifier_repo.dart';
import '../../logic/logic.dart';

class Analyzing extends StatelessWidget {
  const Analyzing({super.key});

  @override
  Widget build(BuildContext context) {
    final String file = ModalRoute.of(context)!.settings.arguments as String;
    ClassifierRepo.classifyImg(path: file, ctx: context);
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 88),
              OutlinedText(
                label: Languages.of(context)!.analyzing,
                forSmall: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Image.asset(Assets.loading),
              ),
              if (AdHelper.nativeAd != null)
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 320,
                    minHeight: 320,
                    maxWidth: 400,
                    maxHeight: 400,
                  ),
                  child: AdWidget(ad: AdHelper.nativeAd!),
                )
            ],
          ),
        ),
      ),
    );
  }
}
