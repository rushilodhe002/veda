import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/themes/app_text_style.dart';

class RuleOfDantadhava extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFFFD4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child:  Row(
            children: [
              SvgPicture.asset(
                AppImages.backArrowIcon,
                height: 35,
                width: 35,
              ),
               Text(
                AppStrings.ruletext,
                style: AppTextStyle.largeHeader
                    .copyWith(fontSize: 20, fontWeight: FontWeight.w800),
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
                  color:AppColors.white,
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
                    buildRuleTitle('Rules for Dantadhavana:'),
                    buildRuleItem('Use of Herbal Toothpaste/Powder:',
                        'Use natural, herbal toothpastes or powders with ingredients like neem, khadir, and arjuna, as described in Ayurvedic texts like the Charaka Samhita and Sushruta Samhita.'),
                    buildRuleItem('Gentle Brushing:',
                        'Brush gently using circular motions. Avoid excessive force to protect the enamel and gums.'),
                    buildRuleItem('Frequency:',
                        'Brush twice daily—once in the morning and once before bed. If needed, brushing after meals is also beneficial.'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRuleTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget buildRuleItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• $title',
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: AppColors.black
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 4.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14.0,
                color: AppColors.black              ),
            ),
          ),
        ],
      ),
    );
  }
}
