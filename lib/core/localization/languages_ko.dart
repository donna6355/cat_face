import './languages.dart';

class LanguagesKo extends Languages {
  @override
  String get appName => '기분 어떠냐옹';
  @override
  String get appDescription =>
      '''세상에서 제일 알 수 없는 요상한 생물체.\n극진히 주인님을 모시고 살기 위해서는 항상 주인님의 기분을 파악해야하는 것이 인지상정!\n쫑긋한 귀, 호수같은 동공, 촉촉한 코 등 주인님의 얼굴에서 오늘 기분은 어떠신지 파악해 봅시다!''';
  @override
  String get takePic => '사진 찍기';
  @override
  String get getPic => '사진 가져오기';
  @override
  String get lang => 'English';
  @override
  String get picGuide => '귀와 얼굴 전체가 나오도록 사진을 잘라주세요!';
}
