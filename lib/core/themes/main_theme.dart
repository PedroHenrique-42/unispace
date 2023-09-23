import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/app_colors.dart';

class MainTheme {
  static ThemeData getMainTheme(BuildContext context) {
    return ThemeData(
      fontFamily: "Modak",
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBrown),
      scaffoldBackgroundColor: AppColors.primaryBrown,
      cardTheme: const CardTheme(
        color: AppColors.primaryYellow,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: AppColors.primaryWhite,
        border: OutlineInputBorder(),
      ),
      textTheme: TextTheme(
        labelMedium: TextStyle(
          color: AppColors.primaryBlack,
          fontSize: MediaQuery.of(context).size.width > 1000 ? 4.sp : 16,
        ),
        titleSmall: TextStyle(
          color: AppColors.primaryWhite,
          fontSize: MediaQuery.of(context).size.width > 1000 ? 4.sp : 16,
        ),
        titleMedium: TextStyle(
          color: AppColors.primaryWhite,
          fontSize: MediaQuery.of(context).size.width > 1000 ? 8.sp : 24,
        ),
      ),
    );
  }
}
