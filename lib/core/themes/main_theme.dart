import 'package:flutter/material.dart';
import 'package:unispace/core/constants/app_colors.dart';

class MainTheme {
  final BuildContext context;

  MainTheme({required this.context});

  ThemeData get lightTheme {
    var screenSize = MediaQuery.of(context);

    return ThemeData(
      fontFamily: "Modak",
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryBrown),
      scaffoldBackgroundColor: AppColors.primaryBrown,
      appBarTheme: const AppBarTheme(color: AppColors.primaryYellow),
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
          fontSize: screenSize.size.width > 1000 ? 32 : 16,
        ),
        bodyMedium: TextStyle(
          color: AppColors.primaryWhite,
          fontSize: screenSize.size.width > 1000 ? 32 : 16,
        ),
        titleSmall: TextStyle(
          color: AppColors.primaryWhite,
          fontSize: screenSize.size.width > 1000 ? 32 : 16,
        ),
        titleMedium: TextStyle(
          color: AppColors.primaryWhite,
          fontSize: screenSize.size.width > 1000 ? 32 : 24,
        ),
      ),
    );
  }
}
