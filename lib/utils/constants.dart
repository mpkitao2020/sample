import 'package:flutter/material.dart';

// WebのベースURL
const String webBaseUrl = 'http://10.0.2.2:3000';

// アプリのテーマカラー
const int PRIMARY_COLOR = 0xFF00BFA5;

// 定数をクラス内でグループ化
class AppStrings {
  static const String appTitle = 'Flutter Demo App';
  static const String home = 'ホーム';
  static const String bookmark = '応募リスト';
  static const String mypage = 'マイページ';
}

class AssetPaths {
  static const String iconsPath = 'assets/icons/';
}

class AppColors {
  static const Color mainColor = Color(0xFF222222);
  static const Color subColor = Color(0xFFA0ADB6);
  static const Color accentColor = Color(0xFF2171F2);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color subBackgroundColor = Color(0xFFF4F6F7);
  static const Color yellowColor = Color(0xFFFFC107);
}

class AppPaddings {
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
}

class AppTextSizes {
  static const double navigationBar = 9.0;
  static const double small = 12.0;
  static const double medium = 16.0;
  static const double large = 20.0;
  static const double extraLarge = 24.0;
}

class AppIconSizes {
  static const double navigationBar = 36.0;
}
