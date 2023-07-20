import './languages.dart';

class LanguagesEn extends Languages {
  @override
  String get appName => 'MOODEOW';
  @override
  String get appDescription =>
      '''The most peculiar creature in the world.\nTo serve the master in the utmost sincerity, you must be aware of the master's mood!\nUpright ears, diamond eyes, moist nose, etc. Read the master's face and check his mood!''';
  @override
  String get takePic => 'Take picture';
  @override
  String get getPic => 'From gallery';
  @override
  String get lang => '한국어';
  @override
  String get picGuide => 'Crop the whole face with ears!';
  @override
  String get analyzing => 'Analyzing...\nPlease wait for a moment.';
  @override
  String get peaceCat => 'Peaceful Cat';
  @override
  String get yawnCat => 'Yawning Cat';
  @override
  String get angryCat => 'Angry Cat';
  @override
  String get sleepyCat => 'Sleepy Cat';
  @override
  String get excitedCat => 'Excited Cat';
  @override
  String get failed => 'Unidentified Creature?';
  @override
  String get retry => 'Retry';
  @override
  String get peaceCatContents => '';
  @override
  String get yawnCatContents => '';
  @override
  String get angryCatContents => '';
  @override
  String get sleepyCatContents => '';
  @override
  String get excitedCatContents => '';
  @override
  String get failedContents => '';
  @override
  String get warning => '';
}
