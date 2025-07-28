import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String hintText;
  final TextStyle? hintStyle;
  final String? label;
  final TextStyle? labelStyle;
  final Color fillColor;
  final Widget? prefix;
  final Widget? suffix;
  final double? height;
  final double width;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;

  const TextFieldCustomWidget({
    Key? key,
    required this.keyboardType,
    this.controller,
    required this.hintText,
    this.hintStyle,
    this.label,
    this.labelStyle,
    required this.fillColor,
    this.prefix,
    this.suffix,
    this.height,
    required this.width,
    required this.borderColor,
    required this.borderRadius,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: hintStyle,
          labelText: label,
          labelStyle: labelStyle,
          prefixIcon: prefix,
          suffixIcon: suffix,
          contentPadding: contentPadding ?? const EdgeInsets.all(16.0), 
        ),
      ),
    );
  }
}
