import 'package:flutter/material.dart';
import 'package:quiz_app_hw7/constants/app_colors.dart';

class AppTextStyles {
  static const appBarTextStyle = TextStyle(fontSize: 24,
  fontWeight: FontWeight.bold,color: AppColors.appBarTextColor);
  static const bodyTextStyle = TextStyle(fontSize: 28,
  fontWeight: FontWeight.w500,fontFamily: AutofillHints.addressCityAndState, 
  color: AppColors.appBarTextColor,
  fontStyle: FontStyle.italic,);

  static const buttonTextStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.w600,
  color: AppColors.appBarColor,);
  static const falseButtonTextStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.w600,
  color:Colors.white,);
}