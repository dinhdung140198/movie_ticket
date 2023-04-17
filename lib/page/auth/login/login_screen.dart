import 'package:flutter/material.dart';
import 'package:movie_ticket/internal/utils/style.dart';
import 'package:movie_ticket/page/common_widgets/app_botton.dart';
import 'package:movie_ticket/page/common_widgets/app_input_field.dart';
import 'package:movie_ticket/page/common_widgets/app_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LogoApp(
              width: 88,
              height: 88,
              widthIcon: 40.69,
              heightIcon: 40.69,
            ),
            const SizedBox(height: 32,),
            Text(
              "Welcome Back,\nMovie Lover!",
              style: AppTextStyle.titleText,
            ),
            const SizedBox(height: 30,),
            const InputFieldApp(),
            const SizedBox(height: 12,),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                InkWell(
                  child: Text(
                    "Forget Password?",
                    style: AppTextStyle.content.copyWith(fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28,),
            Center(
              child: AppButton(
                text: "Login",
                colorButton: AppColors.unselectButtonColor,
                width: 255,
                height: 60,
                ontap: () {},
              ),
            ),
            const SizedBox(height: 21,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Create new account?",
                  style: TextStyle(fontSize: 14, color: AppColors.greyDAD),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    " Sign Up",
                    style: TextStyle(fontSize: 14, color: AppColors.blue7F7),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
