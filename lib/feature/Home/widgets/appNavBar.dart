import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/constants/app_strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Appnavbar extends StatelessWidget {
  const Appnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
               height: 60, child: Image.asset(AppImages.appLogo)),
              const Text(
                AppStrings.vedaHelthText,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.logoTextColor,
                ),
              ),
            ],
          ),

          const Spacer(),

          Row(
            children: [
              SvgPicture.asset(AppImages.fireicon, height: 24),
              const SizedBox(width: 6), 
              const Text(
                "10",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 12), 
              SvgPicture.asset(AppImages.profileImage, height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
