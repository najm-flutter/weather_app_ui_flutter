import 'package:flutter/material.dart';
import 'package:test_clip_path/core/constants/app_colors.dart';

ThemeData myTheme (){
  return ThemeData(
    fontFamily: 'SF',
    textTheme: TextTheme(
      titleMedium: TextStyle(color: AppColors.white, fontSize: 34),
      titleLarge: TextStyle(color: AppColors.white, fontSize: 96, fontFamily: 'SFT', height: 1),
      titleSmall: TextStyle(color: AppColors.gray, fontSize: 20, fontFamily: 'SFT', fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(color: AppColors.white, fontSize: 20, fontFamily: 'SFT', fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 15, color: AppColors.otherFife.withOpacity(0.60))

    )
  );
}