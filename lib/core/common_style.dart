import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonStyle {
  CommonStyle._();

  static const Color primaryGray = Color(0xff454442);
  static const Color subGray = Color(0xffE5E4DB);

  static const TextStyle headerCoreWhite = TextStyle(
    fontSize: 28,
    color: Colors.white,
  );
  static TextStyle headerOuterGray = TextStyle(
    fontSize: 28,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..color = primaryGray,
  );
  static const TextStyle subHeaderCoreWhite = TextStyle(
    fontSize: 20,
    color: Colors.white,
  );
  static TextStyle subHeaderOuterGray = TextStyle(
    fontSize: 20,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = primaryGray,
  );
  static const TextStyle paragraphText = TextStyle(
    fontSize: 16,
    height: 1.5,
    color: primaryGray,
  );
  static const TextStyle underlineText = TextStyle(
    color: primaryGray,
    decoration: TextDecoration.underline,
  );
  static const TextStyle warningText = TextStyle(
    fontSize: 12,
    height: 1.5,
    color: primaryGray,
  );

  static ButtonStyle basicBtn = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(primaryGray),
    foregroundColor: MaterialStateProperty.all<Color>(subGray),
    fixedSize: MaterialStateProperty.all<Size>(const Size(200, 40)),
    textStyle: MaterialStateProperty.all<TextStyle>(
      TextStyle(fontSize: 18, fontFamily: GoogleFonts.gamjaFlower().fontFamily),
    ),
  );

  static ButtonStyle reverseBtn = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(subGray),
    foregroundColor: MaterialStateProperty.all<Color>(primaryGray),
    fixedSize: MaterialStateProperty.all<Size>(const Size(200, 40)),
    textStyle: MaterialStateProperty.all<TextStyle>(
      TextStyle(fontSize: 18, fontFamily: GoogleFonts.gamjaFlower().fontFamily),
    ),
  );
}
