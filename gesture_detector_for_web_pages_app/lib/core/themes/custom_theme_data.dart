import 'package:flutter/material.dart';

class CustomTheme {
  static Color customAppBarColor = Colors.grey;
  static ThemeData customThemeData() {
    return ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: Colors.white54,
      iconTheme: const IconThemeData(color: Colors.black54),
    );
  }
}
