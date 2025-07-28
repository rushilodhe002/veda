import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/themes/app_text_style.dart';

class GandushaLiquidsScreen extends StatelessWidget {
  const GandushaLiquidsScreen({super.key});

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
                  "Types of Liquids Used in Gandush",
                  style: AppTextStyle.largeHeader
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Top Card - Types of Liquids
                  Container(
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
                          "Types of Liquids Used in Gandush",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                        20.height,
                        buildLiquidItem(
                          'Oils:',
                          ['Sesame oil (most common)', 'Coconut oil', 'Medicated oils like Irimedadi Taila']
                        ),
                        buildLiquidItem(
                          'Milk:',
                          ['Recommended for Pitta imbalances, soothing and cooling the mouth.']
                        ),
                        buildLiquidItem(
                          'Herbal Decoctions:',
                          ['Triphala, neem, or licorice decoctions for oral cleansing and healing.']
                        ),
                        buildLiquidItem(
                          'Honey-Water Mixture:',
                          ['Beneficial for Kapha-related conditions.']
                        ),
                      ],
                    ),
                  ),
                  20.height,
                  // Bottom Card - Instructions
                  Container(
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
                          "Instructions:-",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                        20.height,
                        buildInstructionItem('Fill the mouth completely with the chosen liquid (do not swish).'),
                        buildInstructionItem('Hold the liquid for 5-15 minutes or until the liquid becomes thin or discolored.'),
                        buildInstructionItem('Spit out the liquid and rinse the mouth with warm water.'),
                        buildInstructionItem('Perform Gandusha after Dantadhavana (brushing) and before eating or drinking anything.'),
                      ],
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

  Widget buildLiquidItem(String title, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.only(top: 6, right: 8),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 4.0),
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14.0,
                color: AppColors.black,
              ),
            ),
          )).toList(),
        ],
      ),
    );
  }

  Widget buildInstructionItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.only(top: 6, right: 8),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14.0,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 