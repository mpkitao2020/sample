import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final textTheme = GoogleFonts.ralewayTextTheme();
    return ThemeData(
      useMaterial3: true,
      textTheme: textTheme,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.mainColor,
        onPrimary: AppColors.backgroundColor,
        secondary: AppColors.subColor,
        onSecondary: AppColors.backgroundColor,
        error: Colors.red,
        onError: AppColors.backgroundColor,
        background: AppColors.backgroundColor,
        onBackground: AppColors.mainColor,
        surface: AppColors.accentColor,
        onSurface: AppColors.backgroundColor,
      ),
    );
  }
}
