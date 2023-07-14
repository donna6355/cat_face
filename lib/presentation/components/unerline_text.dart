import 'package:flutter/material.dart';
import '../../core/core.dart';

class UnderlineText extends StatelessWidget {
  const UnderlineText({
    required this.label,
    this.onTap,
    super.key,
  });
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(label, style: CommonStyle.underlineText),
    );
  }
}
