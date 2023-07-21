import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../core/core.dart';

class AdHelper {
  AdHelper._();

  static NativeAd? _nativeAd;
  static InterstitialAd? _interstitialAd;

  static final String _adNativeId = Platform.isAndroid
      ? const String.fromEnvironment("and_ad")
      : const String.fromEnvironment("ios_ad");
  static final String _adFullId = Platform.isAndroid
      ? const String.fromEnvironment("and_full_ad")
      : const String.fromEnvironment("ios_full_ad");

  static NativeAd? loadNativeAd() {
    _nativeAd?.dispose();
    _nativeAd = NativeAd(
      adUnitId: _adNativeId,
      listener: NativeAdListener(
        onAdLoaded: (_) {},
        onAdFailedToLoad: (ad, _) => ad.dispose(),
      ),
      request: const AdRequest(),
      nativeTemplateStyle: NativeTemplateStyle(
        templateType: TemplateType.medium,
        mainBackgroundColor: CommonStyle.subGray,
      ),
    )..load();
    _loadFullAd();
    return _nativeAd;
  }

  static void disposeNativeAd() {
    _nativeAd?.dispose();
    _nativeAd = null;
  }

  static void _loadFullAd() {
    InterstitialAd.load(
      adUnitId: _adFullId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdFailedToShowFullScreenContent: (ad, err) => ad.dispose(),
            onAdDismissedFullScreenContent: (ad) => ad.dispose(),
          );
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (_) {},
      ),
    );
  }

  static void showFullAd() {
    _interstitialAd?.show();
  }

  static NativeAd? get nativeAd => _nativeAd;
}
