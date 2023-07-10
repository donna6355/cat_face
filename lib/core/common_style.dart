import 'package:flutter/material.dart';

class CommonStyle {
  CommonStyle._();

  static const Color primaryGray = Color(0xff454442);
  static const Color subGray = Color(0xffE5E4DB);

  static ButtonStyle basicBtn = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(primaryGray),
  );
}
