import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
    this.label, {
    Key? key,
    this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    this.fontSize,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color textColor;
  final String label;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 48.0,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(16.0),
      ),
      child: Text(
        label,
        style: StylesManager.textStyle18.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
