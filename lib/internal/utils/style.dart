import 'package:flutter/material.dart';

class AppFonts {
  static const String Montserrat = "Montserrat";
}

class AppTextStyle {
  static const TextStyle montserrat = TextStyle(
    fontFamily: AppFonts.Montserrat,
  );

  static TextStyle get titleText => montserrat.copyWith(
        fontSize: 24.0,
        color: AppColors.titleColor,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get normal => montserrat.copyWith(
        fontSize: 20.0,
        color: AppColors.titleColor,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get content => montserrat.copyWith(
        fontSize: 16.0,
        color: AppColors.titleColor,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textButton => montserrat.copyWith(
        fontSize: 18.0,
        color: AppColors.titleColor,
        fontWeight: FontWeight.w500,
      );
}

class AppColors {
  static const Color backgroundColor = Color(0xFF0B0F2F);
  static const Color mainColor = Color(0xFF3E60F9);
  static const Color titleColor = Color(0xFFFFFFFF);
  static const Color blueEFF = Color(0xFF449EFF);
  static const Color blue7F7 = Color(0xFF1DC7F7);
  static const Color blueAE7 = Color(0xFF48CAE7);
  static const Color blue8F8 = Color(0xFF3D58F8);
  static const Color blueBA1 = Color(0xFF2C4BA1);
  static const Color blue577 = Color(0xFF1E3577);
  static const Color greyDBD = Color(0xFFABADBD);
  static const Color grey76A = Color(0xFF42476A);
  static const Color greyD3B = Color(0xFF151D3B);
}
