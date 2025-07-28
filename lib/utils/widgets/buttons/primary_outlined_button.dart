import 'package:flutter/material.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final double? fontSize;

  const PrimaryOutlinedButton(
      {super.key,
      required this.label,
      this.onPressed,
      this.buttonColor,
      this.borderColor,
      this.textColor,
      this.borderRadius,
      this.padding,
      this.height,
      this.width,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: Colors.grey,
          side: BorderSide(
            color: borderColor ?? Theme.of(context).primaryColor,
            width: 1.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 4.0),
          ),
          padding: padding ??
              const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
              color: textColor ?? Theme.of(context).primaryColor,
              fontSize: fontSize ?? 16),
        ),
      ),
    );
  }
}
