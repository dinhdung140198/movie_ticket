import 'package:flutter/material.dart';
import 'package:movie_ticket/internal/utils/app_assets.dart';
import 'package:movie_ticket/internal/utils/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(32.0)),
          child: Image.asset(
            AppIcons.splashIcon,
            // fit: BoxFit.fill,
            width: 55.48,
            height: 55.48,
          ),
        ),
      ),
    );
  }
}
