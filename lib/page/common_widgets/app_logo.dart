import 'package:flutter/material.dart';
import 'package:movie_ticket/internal/utils/app_assets.dart';
import 'package:movie_ticket/internal/utils/style.dart';

class LogoApp extends StatelessWidget {
  final double? width;
  final double? height;
  final double? widthIcon;
  final double? heightIcon;
  const LogoApp({
    super.key,
    this.width,
    this.height,
    this.widthIcon,
    this.heightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(32.0)),
      child: Image.asset(
        AppIcons.splashIcon,
        // fit: BoxFit.fill,
        width: widthIcon,
        height: heightIcon,
      ),
    );
  }
}
