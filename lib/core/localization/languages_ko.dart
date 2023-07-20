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
  @override
  String get analyzing => '분석 중입니다...\n잠시만 기다려 주세요.';
  @override
  String get peaceCat => '평화로운 고양이';
  @override
  String get yawnCat => '하품하는 고양이';
  @override
  String get angryCat => '화난 고양이';
  @override
  String get sleepyCat => '쿨쿨 졸린 고양이';
  @override
  String get excitedCat => '흥분한 고양이';
  @override
  String get failed => '알 수 없는 생물체';
  @override
  String get retry => '다시 시도하기';
  @override
  String get peaceCatContents =>
      '정면을 향한 귀. 세로로 찢어진 동공. 옆으로 뻗어진 수염.\n주인님은 현재 마음의 평화를 찾았습니다. 매우 만족스러운 상태입니다.';
  @override
  String get yawnCatContents =>
      '한껏 확장된 동공. 활짝 펼쳐진 수염. 꼿꼿하게 선 두 귀.\n주인님이 흥미로운 것 또는 낯선 것을 발견하고 매우 흥분한 상태입니다. 혹시 주인님이 엉덩이를 뒤로 쭉 빼고 움찔거리는 상태라면 도망가세요! 맹수가 곧 사냥을 시작합니다!';
  @override
  String get angryCatContents =>
      '사람과 비슷하게 고양이도 졸릴 때나 부족한 산소를 공급할 때 하품을 하는데요. 그 밖에도 긴장과 불안을 해소하기 위해서도 하품을 합니다. 하지만 과도한 하품은 구내염, 치주염 등 주인님 입안이 불편하다는 사인일 수도 있습니다!';
  @override
  String get sleepyCatContents =>
      '맨날 잠만 자는 듯한 주인님...\n실제로 고양이는 하루 평균 16-20시간을 자는데 쓰는데요. 하지만 이 중에서도 깊은 잠은 겨우 3-4시간 정도에 불과하고 대부분 선잠이라고 합니다. 쿨쿨 주무시는 주인님을 방해하지 않도록 쉿! 모두 로그아웃하세요!';
  @override
  String get excitedCatContents =>
      '감쪽같이 뒤로 사라진 두 귀. 한껏 찡그린 미간과 콧잔등. 슬쩍 보이는 날카로운 송곳니.\n주인님께서는 매우 심기가 불편합니다. 언제 하악질이 날라와도 이상하지 않은 상황입니다. 조심하세요!';
  @override
  String get failedContents =>
      '죄송합니다... 알 수 없는 생물체 분석에 실패하였습니다... 어떤 의미로는 굉장히 정상적인 상태입니다... 감히 한낱 인간이 어찌 고양이님의 위대한 기분을 헤아리겠습니까... 하하...\n주인님의 얼굴을 정면에서 잘 찍어서 다시 시도해 주세요:)';
  @override
  String get warning =>
      '** 이 어플은 얼렁뚱땅 잡학을 근거로 제멋대로 분석할 뿐이니 재미로 봐주세요! 과학적 의학적 상담은 수의사에게!';
}
