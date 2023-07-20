import 'package:flutter/material.dart';

abstract class Languages {
  static Languages? of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  String get appName;
  String get appDescription;
  String get takePic;
  String get getPic;
  String get lang;
  String get picGuide;
  String get analyzing;
  String get retry;

  String get peaceCat;
  String get yawnCat;
  String get angryCat;
  String get sleepyCat;
  String get excitedCat;
  String get failed;
  String get peaceCatContents;
  String get yawnCatContents;
  String get angryCatContents;
  String get sleepyCatContents;
  String get excitedCatContents;
  String get failedContents;
  String get warning;
}
