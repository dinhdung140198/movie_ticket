import 'package:flutter/material.dart';
import 'package:movie_ticket/internal/utils/style.dart';
import 'package:movie_ticket/page/common_widgets/app_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: LogoApp(
          width: 120,
          height: 120,
          widthIcon: 55.48,
          heightIcon: 55.48,
        ),
      ),
    );
  }
}
