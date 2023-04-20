import 'package:flutter/material.dart';
import 'package:movie_ticket/internal/utils/style.dart';

class InputFieldApp extends StatelessWidget {
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final bool? obscureText;
  final double? radius;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  const InputFieldApp({
    Key? key,
    this.hintText,
    this.labelText,
    this.textInputType,
    this.initialValue,
    this.obscureText,
    this.radius,
    this.controller,
    this.validator,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      style: const TextStyle(
        color: Colors.white, // Set the text color to blue
      ),
      controller: controller,
      keyboardType: textInputType,
      obscureText: obscureText ?? false,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText ?? "HintText",
        hintStyle: AppTextStyle.content.copyWith(
          color: AppColors.titleColor.withOpacity(0.2),
          fontSize: 14,
        ),
        labelText: labelText ?? "Label text",
        labelStyle: AppTextStyle.content.copyWith(
          fontSize: 14,
          color: AppColors.titleColor.withOpacity(0.8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
          borderSide: const BorderSide(
            color: AppColors.mainColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
          borderSide: const BorderSide(
            color: AppColors.titleColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
          borderSide: const BorderSide(
            color: AppColors.errorColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 10)),
          borderSide: const BorderSide(
            color: AppColors.errorColor,
          ),
        ),
      ),
    );
  }
}
