import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import '../../core/core.dart';

class OutlinedText extends StatelessWidget {
  const OutlinedText({
    required this.label,
    this.forSmall = false,
    super.key,
  });
  final String label;
  final bool forSmall;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(label,
            style: forSmall
                ? CommonStyle.subHeaderOuterGray
                : CommonStyle.headerOuterGray),
        if (Platform.isAndroid)
          Text(label,
              style: forSmall
                  ? CommonStyle.subHeaderCoreWhite
                  : CommonStyle.headerCoreWhite),
      ],
    );
  }
}
