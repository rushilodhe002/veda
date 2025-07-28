import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/themes/app_text_style.dart';

class GandushaBenefitsScreen extends StatelessWidget {
  const GandushaBenefitsScreen({super.key});

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
                  "Benefits of Gandusha:",
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
                      "Benefits of Gandusha:",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    20.height,
                    buildBenefitItem(
                      'Strengthens Oral Tissues:',
                      'Promotes the health of gums, teeth, and tongue, preventing oral disorders like gingivitis and tooth decay.'
                    ),
                    buildBenefitItem(
                      'Prevents Dryness (Vata Imbalance):',
                      'Keeps the mouth and lips moist, reducing dryness and cracking caused by Vata imbalance.'
                    ),
                    buildBenefitItem(
                      'Improves Taste Perception:',
                      'Restores the natural sensitivity of taste buds, enhancing digestion and food enjoyment.'
                    ),
                    buildBenefitItem(
                      'Removes Toxins and Impurities:',
                      'Pulls out toxins (Ama) and bacteria from the oral cavity, promoting overall health.'
                    ),
                    buildBenefitItem(
                      'Prevents Halitosis (Bad Breath):',
                      'Maintains oral hygiene and prevents foul-smelling breath (Durgandha).'
                    ),
                    buildBenefitItem(
                      'Relieves Jaw Stiffness and Pain:',
                      'Beneficial for conditions like TMJ (temporomandibular joint disorders) and improves flexibility in the jaw.'
                    ),
                    buildBenefitItem(
                      'Improves Voice Quality:',
                      'Strengthens oral and throat tissues, enhancing speech clarity and vocal quality.'
                    ),
                    buildBenefitItem(
                      'Protects Against Oral Ulcers:',
                      'Prevents and heals small ulcers in the mouth caused by Pitta imbalances.'
                    ),
                    buildBenefitItem(
                      'Promotes Facial Glow:',
                      'Regular practice enhances the complexion and glow of the face due to detoxification effects.'
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