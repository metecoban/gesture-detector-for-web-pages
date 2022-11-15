import 'package:flutter/material.dart';
import 'package:gesture_detector_for_web_pages_app/core/themes/custom_theme_data.dart';
import 'package:gesture_detector_for_web_pages_app/views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      title: 'Gesture Detector Try',
      theme: CustomTheme.customThemeData(),
    );
  }
}
