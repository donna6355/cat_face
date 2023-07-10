import 'package:cat_face/core/core.dart';
import 'package:flutter/material.dart';

class CommonStyle {
  CommonStyle._();

  static const Color primaryGray = Color(0xff454442);
  static const Color subGray = Color(0xffE5E4DB);

  static ButtonStyle basicBtn = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(primaryGray),
    fixedSize: MaterialStateProperty.all<Size>(const Size(200, 40)),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 18,
        fontFamily: Constants.fontGamja,
      ),
    ),
  );
}
