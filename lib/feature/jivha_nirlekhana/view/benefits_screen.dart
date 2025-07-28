import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/themes/app_text_style.dart';

class BenefitsScreen extends StatelessWidget {
  const BenefitsScreen({super.key});

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
                  "Benefits of Jivha Nirlekhana",
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
                    buildBenefitItem(
                      'Removes Toxins:',
                      'Tongue scraping removes ama (toxins) and bacteria that accumulate on the tongue overnight, preventing their reabsorption into the body.'
                    ),
                    buildBenefitItem(
                      'Improves Taste Perception:',
                      'Clearing the tongue coating enhances taste buds sensitivity, leading to better taste perception and improved digestion.'
                    ),
                    buildBenefitItem(
                      'Enhances Digestion:',
                      'By stimulating the taste buds, it activates the digestive system and promotes better secretion of digestive enzymes.'
                    ),
                    buildBenefitItem(
                      'Prevents Bad Breath:',
                      'Removes bacteria and food particles that cause halitosis (bad breath), promoting oral hygiene.'
                    ),
                    buildBenefitItem(
                      'Supports Oral Health:',
                      'Reduces the risk of oral infections, gum disease, and other dental problems by maintaining tongue cleanliness.'
                    ),
                    buildBenefitItem(
                      'Balances Doshas:',
                      'Helps balance Kapha dosha by removing excess mucus and promoting clarity in the oral cavity.'
                    ),
                    buildBenefitItem(
                      'Improves Speech:',
                      'A clean tongue enhances speech clarity and pronunciation by removing coating that can affect articulation.'
                    ),
                    buildBenefitItem(
                      'Promotes Overall Health:',
                      'According to Ayurveda, tongue health is connected to overall body health, making this practice beneficial for systemic wellness.'
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

  Widget buildBenefitItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• $title',
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 4.0),
            child: Text(
              description,
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