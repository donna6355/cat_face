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
  String get picGuide =>
      'Take front shot\nincluding ears and the whole face'; //TODO check this
}
