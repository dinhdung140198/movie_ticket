import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;
  final Color? colorButton;
  final Color? borderColor;
  final LinearGradient? linearGradient;
  final String? text;
  final TextStyle? textStyle;
  final VoidCallback? ontap;

  const AppButton({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.colorButton,
    this.borderColor,
    this.text,
    this.textStyle,
    this.ontap, 
    this.linearGradient,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      borderRadius: BorderRadius.circular(radius ?? 10),
      child: Container(
        width: width ?? 150,
        height: height ?? 50,
        decoration: BoxDecoration(
            color: colorButton,
            gradient: linearGradient,
            border: Border.all(
              color: borderColor ?? Colors.black.withOpacity(0.4),
            ),
            borderRadius: BorderRadius.circular(radius ?? 10)),
        child: Center(
          child: Text(
            text ?? "button",
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
