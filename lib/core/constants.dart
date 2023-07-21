class Constants {
  Constants._();
  static const String appTitle = '기분 어떠냐옹 MOODEOW';
  static const String fontGamja = 'GamjaFlower';
}

class Assets {
  Assets._();
  static const String homeImg = 'assets/images/home_img.png';
  static const String loading = 'assets/images/toss_n_turn.gif';
  static const String tfLabel = 'assets/models/labels.txt';
  static const String tfModel = 'models/model_unquant.tflite';
}

class NamedRoutes {
  NamedRoutes._();
  static const String home = '/';
  static const String analyze = '/analyze';
  static const String mood = '/mood';
}
