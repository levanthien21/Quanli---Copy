import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Heading styles
  static const TextStyle heading1 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteText,
    height: 1.0,
  );

  static const TextStyle heading2 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.secondaryText,
    height: 1.1,
  );

  // Body text styles
  static const TextStyle bodyText = TextStyle(
    fontFamily: 'League Spartan',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryText,
  );

  static const TextStyle smallText = TextStyle(
    fontFamily: 'League Spartan',
    fontSize: 13,
    fontWeight: FontWeight.w300,
    color: AppColors.darkText,
    height: 1.0,
  );

  // Input field label
  static const TextStyle inputLabel = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.darkText,
  );

  // Input field text
  static const TextStyle inputText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.darkText,
  );

  // Button text
  static const TextStyle buttonText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.darkText,
    height: 1.1,
  );

  // Status bar time
  static const TextStyle statusBarTime = TextStyle(
    fontFamily: 'League Spartan',
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteText,
  );
}
