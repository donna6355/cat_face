import 'package:flutter/material.dart';
import '../components/components.dart';
import '../../core/core.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: Image.asset(Assets.homeImg, width: 264),
              ),
              ParagraphText(Languages.of(context)!.appDescription),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(Languages.of(context)!.takePic)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: CommonStyle.reverseBtn,
                  child: Text(Languages.of(context)!.getPic),
                ),
              ),
              UnderlineText(
                label: Languages.of(context)!.lang,
                onTap: () =>
                    changeLanguage(context, Languages.of(context)!.lang),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
