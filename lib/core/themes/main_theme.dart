import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/app_colors.dart';

class MainTheme {
  static ThemeData getMainTheme() {
    return ThemeData(
      fontFamily: "Modak",
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBrown),
      scaffoldBackgroundColor: AppColors.primaryBrown,
      cardTheme: const CardTheme(
        color: AppColors.primaryYellow,
      ),
      textTheme: TextTheme(
        titleSmall: TextStyle(
          color: AppColors.primaryWhite,
          fontSize: 4.sp,
        ),
        titleMedium: TextStyle(
          color: AppColors.primaryWhite,
          fontSize: 8.sp,
        ),
      ),
    );
  }
}
