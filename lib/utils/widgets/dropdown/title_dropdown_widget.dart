import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../themes/app_text_style.dart';

class TitleDropdownWidget extends StatelessWidget {
  final String? title;
  final TextStyle? textStyle;
  final bool? isTitleRequired;
  final List<String> items;
  final String? hintText;
  final String selectedValue;
  final void Function(String?)? onChanged;
  final double? height;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;
  final bool? isDropdownOnly;
  final bool? isOptional;
  final double? width;
  final double? paddingLeft;

  const TitleDropdownWidget(
      {super.key,
      this.title,
      required this.items,
      required this.selectedValue,
      this.hintText,
      this.onChanged,
      this.textStyle,
      this.isTitleRequired = false,
      this.height = 45,
      this.validator,
      this.autovalidateMode,
      this.isDropdownOnly = true,
      this.isOptional = false,
      this.width,
      this.paddingLeft});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isDropdownOnly ?? false)
          Row(
            children: [
              if (isTitleRequired ?? false)
                Text(
                  "* ",
                  style: TextStyle(
                      color: Colors.red, fontSize: textStyle?.fontSize),
                ),
              Text(
                title ?? "",
                style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
              ),
              2.width,
              if (isOptional ?? false)
                Text(
                  "(Optional)",
                  style: textStyle ?? AppTextStyle.hintStyle,
                ),
            ],
          ),
        if (isDropdownOnly ?? false) const SizedBox(height: 5),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            items: items
                .map(
                  (String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: AppTextStyle.largeNormalText
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                )
                .toList(),
            value: items.contains(selectedValue) ? selectedValue : items.first,
            onChanged: onChanged,
            buttonStyleData: ButtonStyleData(
              height: height ?? 50,
              width: width,
              padding: EdgeInsets.only(left: paddingLeft ?? 0, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.lightGreyColor,
                ),
                color: AppColors.white,
              ),
              elevation: 0,
            ),
            iconStyleData: IconStyleData(
              icon: Icon(Icons.arrow_drop_down)
              // SvgPicture.asset(AppImages.downOutlineIcon),
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
              ),
              offset: const Offset(0, 0),
            ),
          ),
        ),
        // const SizedBox(height: 16),
      ],
    );
  }
}
