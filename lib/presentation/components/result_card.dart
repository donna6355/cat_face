import 'package:flutter/material.dart';
import '../../core/core.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    required this.description,
    required this.contents,
    required this.icon,
    super.key,
  });
  final String icon;
  final String description;
  final String contents;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 264,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(icon, width: 60),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    description,
                    style: CommonStyle.paragraphText,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(contents, style: CommonStyle.paragraphText),
          ],
        ),
      ),
    );
  }
}
