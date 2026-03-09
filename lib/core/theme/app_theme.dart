import 'package:flutter/material.dart';

class AppTheme {
  static const Color darkBackground = Color(0xFF0A0A12);
  static const Color goldAccent = Color(0xFFFFD700);

  static ThemeData get darkPremium {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      primaryColor: goldAccent,
      colorScheme: const ColorScheme.dark(
        primary: goldAccent,
        surface: Color(0xFF14141E),
        background: darkBackground,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBackground,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: goldAccent,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: goldAccent,
        foregroundColor: darkBackground,
      ),
    );
  }
}