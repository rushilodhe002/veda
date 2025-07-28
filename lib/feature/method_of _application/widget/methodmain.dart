import 'package:donation_management/feature/method_of%20_application/widget/bulletpoint_section.dart';
import 'package:donation_management/feature/method_of%20_application/widget/method_card.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/themes/app_text_style.dart';

class Methodmain extends StatelessWidget {
  const Methodmain({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                AppImages.backArrowIcon,
                height: 35,
                width: 35,
              ),
              Text(
                AppStrings.ruleodtext,
                style: AppTextStyle.largeHeader
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ],
          ),
          30.height,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HerbalToothpasteSection(),
                  const SizedBox(height: 16),
                  TechniqueSection(),
                  const SizedBox(height: 16),
                  timeiofbrushingSection(),
                  const SizedBox(height: 16),
                  benefitsofdantadhavanaSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Herbal Toothpaste Section
  Widget HerbalToothpasteSection() {
    return const CustomCard(
      title: AppStrings.harbaltoothpasttext,
      content: Column(
        children: [
          Column(
            children: [
              BulletPoint(
                bulletColor: AppColors.redColorDark,
              
                text: AppStrings.harbaltoothpastbullet1text,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                  
                ),
              ),
              BulletPoint(
                text: AppStrings.harbaltoothpastbullet2text,
                style: TextStyle(),
              ),
              BulletPoint(
                  text: AppStrings.harbaltoothpastbullet3text,
                  style: TextStyle()),
              BulletPoint(
                  text: AppStrings.harbaltoothpastbullet4text,
                  style: TextStyle()),
            ],
          ),
        ],
      ),
      Column(
        children: [],
      ),
    );
  }

  // Technique Section
  Widget TechniqueSection() {
    return const CustomCard(
      title: AppStrings.techniquetext,
      content: Column(
        children: [
          BulletPoint(
              bulletColor: AppColors.redColorDark,
              text: AppStrings.techniquetextbullet1text,
              style: TextStyle()),
          BulletPoint(
              bulletColor: AppColors.redColorDark,
              text: AppStrings.techniquetextbullet2text,
              style: TextStyle()),
          BulletPoint(
              bulletColor: AppColors.redColorDark,
              text: AppStrings.techniquetextbullet3text,
              style: TextStyle()),
          BulletPoint(
              bulletColor: AppColors.redColorDark,
              text: AppStrings.techniquetextbullet4text,
              style: TextStyle()),
          BulletPoint(
              text: AppStrings.techniquetextbullet5text, style: TextStyle()),
        ],
      ),
      Column(
        children: [],
      ),
    );
  }

  // After Brushing Care Section
  Widget timeiofbrushingSection() {
    return const CustomCard(
        title: AppStrings.timeiofbrushingSection,
        content: Column(
          children: [
            BulletPoint(
                bulletColor: AppColors.redColorDark,
                text: AppStrings.timeiofbrushingSection1,
                style: TextStyle()),
          ],
        ),
        Column(
          children: [],
        ));
  }

  Widget benefitsofdantadhavanaSection() {
    return const CustomCard(
        title: 'Benefits of Dantadhavana:',
        content: Column(
          children: [
            BulletPoint(
                text:
                    'Cleansing: Brushing with herbal toothpastes or powders helps remove bacteria, food particles, and plaque from the mouth, reducing bad breath and promoting oral hygiene',
                style: TextStyle()),
            BulletPoint(
                text:
                    'Strengthening: Herbs like neem, khadir, and arjuna help strengthen the gums and teeth, preventing issues such as gum disease and cavities.',
                style: TextStyle()),
            BulletPoint(
                text:
                    'Freshening Breath: The antimicrobial properties of these herbs naturally freshen the breath.',
                style: TextStyle()),
            BulletPoint(
                text:
                    'Arjuna supports gum health and is known to strengthen teeth and prevent bleeding gums.',
                style: TextStyle()),
            BulletPoint(
                text:
                    'Balancing Doshas: This practice helps balance the doshas, particularly Pitta and Kapha, promoting overall oral health.',
                style: TextStyle(fontSize: 14)),
          ],
        ),
        Column(
          children: [],
        ));
  }
}
