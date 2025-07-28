import 'package:donation_management/feature/Dantdhawan/widget/dantdhawan_containercustom_widget.dart';
import 'package:donation_management/feature/auth/start_screen.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/navigation/route_manager.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/themes/app_text_style.dart';

class DantdhawanCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  context.pop(context);
                },
                child: SvgPicture.asset(
                  AppImages.backArrowIcon,
                  height: 35,
                  width: 35,
                ),
              ),
              15.width,
              Text(
                AppStrings.dantdhawantext,
                style: AppTextStyle.largeHeader.copyWith(fontSize: 25),
              ),
            ],
          ),
          30.height,
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.black,
                  blurRadius: 4,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: const Text(
              AppStrings.dantdhawandesctext,
              style: TextStyle(fontSize: 16, color: AppColors.black),
            ),
          ),
          30.height,
          InkWell(
            onTap: () {
              context.push(AppRouter.method);
            },
            child: const DantdhawanContainercustomWidget(
                title: AppStrings.methodapplicationtext),
          ),
          8.height,
          InkWell(
            onTap: () {
              context.push(AppRouter.ruleofdantadhava);
            },
            child: const DantdhawanContainercustomWidget(
              title: AppStrings.rulefortext,
            ),
          ),
        ],
      ),
    );
  }
}
