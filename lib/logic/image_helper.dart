import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImgHelper {
  ImgHelper._();
  static final ImagePicker _imgPicker = ImagePicker();

  static Future<void> fetchImg({
    required bool forCam,
    required BuildContext ctx,
  }) async {
    XFile? res = await _imgPicker.pickImage(
      source: forCam ? ImageSource.camera : ImageSource.gallery,
    );
    if (res == null) return;
    Navigator.of(ctx).pushNamed('/crop', arguments: res.path);
  }
}
