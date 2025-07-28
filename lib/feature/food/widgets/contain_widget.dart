import 'package:donation_management/utils/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';

class ContainWidget extends StatelessWidget {
  final String data;
  final Widget widget;
  const ContainWidget({super.key, required this.data, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.2), 
            blurRadius: 6, 
            offset: const Offset(0, 3), 
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(
              data,
              style: AppTextStyle.largeHeader
                  .copyWith(color: AppColors.black, fontSize: 20),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: widget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}