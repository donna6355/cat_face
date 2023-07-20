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
  String get angryCat => 'Annoyed Cat';
  @override
  String get sleepyCat => 'Sleepy Cat';
  @override
  String get excitedCat => 'Excited Cat';
  @override
  String get failed => 'Unidentified Creature?';
  @override
  String get retry => 'Retry';
  @override
  String get peaceCatContents =>
      'Does he look like disapproving? The master has found the peace of mind. Everything is so satisfactory.';
  @override
  String get yawnCatContents =>
      "In addition, they yawn to relieve tension and anxiety. However, excessive yawning may be a sign of diseases in the master’s mouth!";
  @override
  String get angryCatContents =>
      "The master is very uncomfortable and annoyed. You may hear the master’s hissing. Watch out!";
  @override
  String get sleepyCatContents =>
      "In fact, cats spend an average of 16-20 hours a day sleeping. Unfortunately deep sleep is only about 3-4 hours among them and most of them are catnaps. Shh! Don't disturb the master’s sleep!";
  @override
  String get excitedCatContents =>
      "The master is excited to encounter something unfamiliar or interesting. If the master is crouching down and staring, you’d better run! The beast is coming!";
  @override
  String get failedContents =>
      "Somehow it's very normal... How dare a human being understand the great feeling of a cat... haha... Please take a good picture of the master's face from the front and try again :)";
  @override
  String get peaceCatDescription =>
      'Forward-facing ears. Stretched pupils. Mild whiskers.';
  @override
  String get yawnCatDescription =>
      'Cats also yawn when they are sleepy or need more oxygen.';
  @override
  String get angryCatDescription =>
      'Flatten ears, Frowned forehead and nose. Pointy fangs.';
  @override
  String get sleepyCatDescription =>
      '...zzz...The master seems to be in asleep always...';
  @override
  String get excitedCatDescription =>
      'Fully dilated pupils. Stiff whiskers. Two straight ears.';
  @override
  String get failedDescription =>
      'ERROR... It is failed to analyze an unidentified creature....';
  @override
  String get warning =>
      "This application is analyzing images based on general knowledge. Do NOT take it seriously, it is just for fun! Visit your vet for scientific and medical advice!";
}
