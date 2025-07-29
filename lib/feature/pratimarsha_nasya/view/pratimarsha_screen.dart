import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/themes/app_text_style.dart';

class PratimarshaScreen extends StatelessWidget {
  const PratimarshaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFFFD4),
      body: Column(
        children: [
          // Header with dark green background
          Container(
            color: Colors.green[800],
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
                    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                15.width,
                Text(
                  "PRATIMARSHA NASYA",
                  style: AppTextStyle.largeHeader
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Information Card with dotted border
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Colors.blue,
                        style: BorderStyle.solid,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      "In Ayurveda. Nasya refers to the practice of administering herbal oils or powders through the nostrils to promote the health of the nasal passages, sinuses, and the overall respiratory system. One of the common practices is Pratimarsha Nasya, which involves the daily application of a small amount of herbal oil into the nostrils.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: AppColors.black,
                        height: 1.5,
                      ),
                    ),
                  ),
                  30.height,
                  // Method of Application Button
                  InkWell(
                    onTap: () {
                      // Navigate to method screen
                      // context.push(AppRouter.pratimarshaMethod);
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
                            "Pratimarsha Nasya - Method of Application:",
                            style: const TextStyle(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.bold),
                          ),
                          const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 16),
                        ],
                      ),
                    ),
                  ),
                  8.height,
                  // Rules Button
                  InkWell(
                    onTap: () {
                      // Navigate to rules screen
                      // context.push(AppRouter.pratimarshaRules);
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
                            "Rules for Using Pratimarsha Nasya:",
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
        ],
      ),
    );
  }
} 