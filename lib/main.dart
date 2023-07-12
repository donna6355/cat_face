import 'package:flutter/material.dart';
import './core/core.dart';
import './presentation/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appTitle,
      theme: ThemeData(
        elevatedButtonTheme:
            ElevatedButtonThemeData(style: CommonStyle.basicBtn),
        fontFamily: Constants.fontGamja,
      ),
      routes: {
        '/': (_) => const Home(),
        '/mood': (_) => const MoodResult(),
        '/crop': (context) => const CropImage(),
      },
    );
  }
}
