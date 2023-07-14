import 'package:flutter/material.dart';
import '../../core/core.dart';

class ParagraphText extends StatelessWidget {
  const ParagraphText(this.contents, {super.key});
  final String contents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        width: 264,
        child: Text(contents, style: CommonStyle.paragraphText),
      ),
    );
  }
}
