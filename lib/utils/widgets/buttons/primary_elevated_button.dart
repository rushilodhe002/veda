import 'package:flutter/material.dart';

class PrimaryElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final double? fontSize;

  const PrimaryElevatedButton(
      {super.key,
      required this.label,
      this.onPressed,
      this.buttonColor,
      this.textColor,
      this.borderRadius,
      this.padding,
      this.height,
      this.width,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? const Color.fromARGB(255, 94, 209, 79),
        foregroundColor: textColor ?? Colors.white,
        disabledForegroundColor:  const Color.fromARGB(255, 94, 209, 79),
        disabledBackgroundColor:  const Color.fromARGB(255, 94, 209, 79),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4.0),
        ),
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(color: textColor, fontSize: fontSize ?? 16),
      ),
    );
  }
}
