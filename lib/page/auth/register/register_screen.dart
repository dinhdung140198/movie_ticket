import 'package:flutter/material.dart';
import 'package:movie_ticket/internal/utils/app_assets.dart';
import 'package:movie_ticket/internal/utils/style.dart';
import 'package:movie_ticket/page/common_widgets/app_botton.dart';
import 'package:movie_ticket/page/common_widgets/app_input_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_sharp,size: 30,),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Create New\nYour Account",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.titleText,
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 92,
                  height: 106,
                  child: Stack(
                    children: [
                      Image.asset(
                        AppImages.imageDefaultProfile,
                        width: 92,
                        height: 92,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        left: 35,
                        bottom: 0,
                        child: InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 3,
                                color: AppColors.mainColor,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Icon(
                              Icons.add_circle_sharp,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 37,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      InputFieldApp(
                        labelText: "Full Name",
                        hintText: "Input your full name",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '\u26A0 Field is empty.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      InputFieldApp(
                        labelText: "Email Address",
                        hintText: "Input your email address",
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '\u26A0 Field is empty.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      InputFieldApp(
                        labelText: "Password",
                        hintText: "Input your password",
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '\u26A0 Field is empty.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 42,
                      ),
                      InputFieldApp(
                        labelText: "Confirm password",
                        hintText: "Input your Confirm password",
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '\u26A0 Field is empty.';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Center(
                        child: AppButton(
                          text: "Sign Up",
                          colorButton: AppColors.unselectButtonColor,
                          width: 255,
                          height: 60,
                          ontap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 67,
                ),
              ],
            ),
          )),
    );
  }
}
