import 'package:flutter/material.dart';

class AppConstants {
  static const String appName = "المتجر الإلكتروني";
  static const String currency = "\$";
}

class AppColors {
  static const primaryColor = Color(0xFF3498db);
  static const accentColor = Color(0xFFe74c3c);
  static const backgroundColor = Color(0xFFF5F5F5);
  static const textColor = Color(0xFF333333);
}

class AppStyles {
  static const headerTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const bodyTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.textColor,
  );
}
