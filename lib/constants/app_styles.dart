
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles{

  static const s14w400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.searchTextFieldTextColor
  );


  static const s10w500 = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColors.statusLiveColor
  );

  static const s10w500Dead = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColors.statusDeadColor
  );


  static const s16w500 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.fullNameColor
  );


  static const s12w400 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.typePersonColor
  );

  static const s210w500 = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColors.typePersonColor,
      letterSpacing: 1.5
  );
}