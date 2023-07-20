// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/core.dart';

class ImgHelper {
  ImgHelper._();
  static final ImagePicker _imgPicker = ImagePicker();

  static Future<void> fetchImg({
    required bool forCam,
    required BuildContext ctx,
  }) async {
    XFile? pickedImg = await _imgPicker.pickImage(
      source: forCam ? ImageSource.camera : ImageSource.gallery,
    );
    if (pickedImg == null) return;
    cropImg(pickedImg: pickedImg.path, ctx: ctx);
  }

  static Future<void> cropImg({
    required String pickedImg,
    required BuildContext ctx,
  }) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: pickedImg,
      compressFormat: ImageCompressFormat.jpg,
      compressQuality: 100,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: Languages.of(ctx)!.picGuide,
          toolbarColor: CommonStyle.primaryGray,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: true,
          hideBottomControls: true,
        ),
      ],
    );
    if (croppedFile == null) return;
    Navigator.of(ctx)
        .pushNamed(NamedRoutes.analyze, arguments: croppedFile.path);
  }
}
