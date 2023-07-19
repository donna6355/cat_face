import 'dart:io';

import 'package:flutter/material.dart';

class MoodResult extends StatelessWidget {
  const MoodResult({super.key});

  @override
  Widget build(BuildContext context) {
    final String file = ModalRoute.of(context)!.settings.arguments as String;
    return Material(
      child: Center(
          child: Column(
        children: [
          Image.file(File(file)),
          Text(file),
        ],
      )),
    );
  }
}
