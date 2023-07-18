import 'package:flutter/material.dart';
import './outlined_text.dart';

import '../../core/core.dart';

class CameraOverlay extends StatelessWidget {
  const CameraOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 32, top: 32, bottom: 32),
              child: GestureDetector(
                child: const Icon(
                  Icons.close,
                  size: 24,
                  color: CommonStyle.subGray,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
        OutlinedText(
          label: Languages.of(context)!.picGuide,
          forSmall: true,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                child: const Icon(
                  Icons.photo_library,
                  size: 24,
                  color: CommonStyle.subGray,
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: CommonStyle.primaryGray, width: 8),
                    shape: BoxShape.circle,
                    color: CommonStyle.subGray,
                  ),
                ),
                onTap: () {},
              ),
              GestureDetector(
                child: const Icon(
                  Icons.flip_camera_android,
                  size: 24,
                  color: CommonStyle.subGray,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
