import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/app_colors.dart';
import '../../themes/app_text_style.dart';

class TitleTextFormField extends StatelessWidget {
  final String? title;
  final bool? isStarTitleRequired;
  final bool? isOptional;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final Color? borderColor;
  final String? hintText;
  final void Function()? onTap;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final InputBorder? border;
  final bool? obscureText;
  final TextStyle? usertextStyle;
  final TextStyle? errorTextstyle;
 final bool? readOnly;

  const TitleTextFormField({
    super.key,
    this.inputFormatters,
    this.validator,
    this.contentPadding,
    this.borderColor,
    this.hintText,
    this.onTap,
    this.onChanged,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.border,
    this.obscureText,
    this.title,
    this.isStarTitleRequired = false,
    this.isOptional = false,
    this.usertextStyle,
    this.errorTextstyle,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular( 8),
      borderSide: const BorderSide(color: AppColors.lightGreyColor),
    );
    final InputDecoration inputDecoration = InputDecoration(
        contentPadding: const EdgeInsets.all(14.0),
        border: outlineInputBorder, 
        enabledBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorMaxLines: 1,
        focusedErrorBorder: outlineInputBorder,
        suffixIcon: suffixIcon,
        hintText: hintText ?? "Write here...",
        hintStyle: AppTextStyle.largeNormalText.copyWith(
            fontWeight: FontWeight.w400, color: AppColors.lightGreyColor));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (isStarTitleRequired ?? false)
          Text("* ",
              style: AppTextStyle.largeNormalText
                  .copyWith(color: AppColors.redColorDark)),
            Text(
              title ?? "",
              style: AppTextStyle.mediumNormalText,
            ),
            if (isOptional ?? false)
              Text(
                " (Optional)",
                style: AppTextStyle.mediumNormalText
                    .copyWith(color: AppColors.lightGreyColor),
              )
          ],
        ),
        8.height,
        TextFormField(
          readOnly:readOnly ?? false ,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: inputFormatters ??
              [
                FilteringTextInputFormatter.deny(
                    RegExp(r'^\s+')) //to avoid empty spaces in input field
              ],
          controller: controller,
          validator: validator,
          obscureText: obscureText ?? false,
          // onTap: onTap,
          onChanged: onChanged,
          keyboardType: keyboardType,
          style: usertextStyle,
          decoration: inputDecoration,
        ),
        // const SizedBox(height: 16),
      ],
    );
  }
}
