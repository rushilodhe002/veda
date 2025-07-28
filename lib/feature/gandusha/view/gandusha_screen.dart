import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/navigation/route_manager.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/themes/app_text_style.dart';

class GandushaScreen extends StatelessWidget {
  const GandushaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFFFD4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppImages.backArrowIcon,
                    height: 35,
                    width: 35,
                  ),
                ),
                15.width,
                Text(
                  "Gandusha (Oil Holding)",
                  style: AppTextStyle.largeHeader
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 6.0,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gandusha is a significant practice in Dinacharya (daily routine) as described in classical Ayurvedic texts like the Charaka Samhita and Ashtanga Hridaya. It involves holding medicated liquids, such as oils or decoctions, in the mouth for a specified duration. Gandusha differs from Kavala Graha (gargling) as it requires filling the mouth completely and not swishing the liquid.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: AppColors.black,
                        height: 1.5,
                      ),
                    ),
                    30.height,
                    InkWell(
                      onTap: () {
                        context.push(AppRouter.gandushaBenefits);
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Benefits of Gandusha",
                              style: const TextStyle(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 16),
                          ],
                        ),
                      ),
                    ),
                    8.height,
                    InkWell(
                      onTap: () {
                        context.push(AppRouter.gandushaLiquids);
                      },
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Types of Liquids Used in Gandusha",
                              style: const TextStyle(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 16),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 