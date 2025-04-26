import 'package:flutter/material.dart';

class AppTheme {
  // Color scheme based on the dark blue design
  static const Color primaryBackground = Color(0xFF1F212E);
  static const Color secondaryBackground = Color(0xFF2D2F3C);
  static const Color accentBlue = Color(0xFF4A80F0);
  static const Color accentPurple = Color(0xFF9182F3);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFF8A8A8E);
  static const Color cardDark = Color(0xFF2D2F3C);
  static const Color chartGreen = Color(0xFF4CD97B);
  static const Color chartYellow = Color(0xFFFFD74C);

  static ThemeData lightTheme = ThemeData.light().copyWith(
    // We'll keep a light theme variant just in case
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: accentBlue,
      secondary: accentPurple,
      onPrimary: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: accentBlue,
      unselectedItemColor: Colors.grey.shade400,
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: primaryBackground,
    cardColor: cardDark,
    primaryColor: accentBlue,
    colorScheme: const ColorScheme.dark(
      primary: accentBlue,
      secondary: accentPurple,
      background: primaryBackground,
      surface: secondaryBackground,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: textWhite,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: textWhite,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: textWhite,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: textGrey,
        fontSize: 14,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryBackground,
      titleTextStyle: TextStyle(
        color: textWhite,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: secondaryBackground,
      selectedItemColor: accentBlue,
      unselectedItemColor: textGrey,
    ),
    cardTheme: CardTheme(
      color: secondaryBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
    ),
  );
}

