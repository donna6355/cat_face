import 'package:flutter/material.dart';
import '../../core/core.dart';
import '../components/components.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 48),
          child: Column(
            children: [
              OutlinedText(label: '기분 어떠냐옹'),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Image.asset(Assets.homeImg, width: 264),
              ),
              ParagraphText(
                  '''세상에서 제일 알 수 없는 요상한 생물체.\n극진히 주인님을 모시고 살기 위해서는 항상 주인님의 기분을 파악해야하는 것이 인지상정!\n쫑긋한 귀, 호수같은 동공, 촉촉한 코 등 주인님의 얼굴에서 오늘 기분은 어떠신지 파악해 봅시다!'''),
              ElevatedButton(onPressed: () {}, child: Text('사진 찍기')),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('사진 가져오기'),
                  style: CommonStyle.reverseBtn,
                ),
              ),
              UnderlineText(label: 'English'),
            ],
          ),
        ),
      ),
    );
  }
}
