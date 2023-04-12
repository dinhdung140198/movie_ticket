import 'package:flutter/material.dart';
import 'package:movie_ticket/internal/utils/app_assets.dart';
import 'package:movie_ticket/internal/utils/style.dart';
import 'package:movie_ticket/page/widgets/app_botton.dart';

class OnbroadingScreen extends StatelessWidget {
  const OnbroadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 144,
                  height: 144,
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
                const SizedBox(
                  height: 54,
                ),
                Text(
                  "New Experience",
                  style: AppTextStyle.titleText,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Watch a new movie much easier than any before",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: const Color(0xFFFFFFFF).withOpacity(0.3)),
                ),
                const SizedBox(
                  height: 72,
                ),
                AppButton(
                  text: "Get Started",
                  textStyle: AppTextStyle.textButton,
                  width: 255,
                  height: 60,
                  radius: 20,
                  linearGradient: const LinearGradient(
                      colors: [AppColors.blueEFF, AppColors.blue7F7],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      stops: [0.0, 1.0]),
                  ontap: () {},
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an Account? ",
                      style: TextStyle(fontSize: 14, color: Color(0xFFADADAD)),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Sign In",
                        style:
                            TextStyle(fontSize: 14, color: AppColors.blue7F7),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
