import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';

class SeasonalPathyWidget extends StatelessWidget {
  const SeasonalPathyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
            InkWell(
                onTap: () {
                  context.pop(context);
                },
                child: SvgPicture.asset(
                  AppImages.backArrow,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                children: [
                  Text(
                    'Seasonal Pathya ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '(Ritucharya-Based Foods)',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6.0,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Text(
                    'Foods should also vary depending on the season, as Ayurveda emphasizes eating with the rhythms of nature.',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                      buildSectionTitle('For Grishma (Summer): '),
                      const SizedBox(height: 8.0),
                      buildItemText(
                          '• Cooling foods such as cucumbers, melons, and coconut.'),
                      buildItemText(
                          '• Light meals like rice, barley, and leafy  greens.'),
                      buildItemText(
                          '• Pitta-balancing drinks like coconut water, mint tea, and cucumber juice.'),
                      const Divider(),
                      const SizedBox(height: 10.0),
                      buildSubSectionTitle('For Varsha (Monsoon):'),
                      const Divider(),
                      buildItemText(
                          '• Warm and light foods like khichdi and soups.'),
                      buildItemText(
                          '• Spices to prevent dampness, like ginger, black pepper, and cumin. '),
                      buildItemText('• Light grains such as rice and wheat.'),
                      const Divider(),
                      const SizedBox(height: 10.0),
                      buildSubSectionTitle('For Hemanta (Winter):'),
                      const Divider(),
                      buildItemText(
                          '• Hearty foods like sesame, rice, and mung dal. '),
                      buildItemText(
                          '• Warm, nourishing meals such as ghee and root vegetables.'),
                      buildItemText(
                          '• Spices: Black pepper, mustard, ginger, and garlic to stimulate metabolism.'),
                      const SizedBox(height: 10.0),
                      const Divider(),
                      const SizedBox(height: 10.0),
                      buildSubSectionTitle('For Shishira (Late Winter):'),
                      const Divider(),
                      buildItemText(
                          '• Warm, cooked grains like rice, barley, and oats. '),
                      buildItemText(
                          '• Nourishing soups and vegetables like sweet potato, carrots, and beets.'),
                      buildItemText(
                          '• Legumes like mung beans and lentils for protein.'),
                      buildItemText(
                          '• Sesame oil for massage and internal nourishment.'),
                      const SizedBox(height: 10.0),
                      const Divider(),
                      const SizedBox(height: 10.0),
                      buildSubSectionTitle('For Shishira (Late Winter):'),
                      const Divider(),
                      buildItemText(
                          '• Improves Digestion: These foods support Agni (digestive fire), helping the body absorb nutrients effectively. '),
                      buildItemText(
                          '• Legumes like mung beans and lentils for protein.'),
                      buildItemText(
                          '• Balances Doshas: Foods are selected based on the users dosha, promoting balance and preventing imbalances.'),
                      buildItemText(
                          '• Enhances Immunity: Nutrient-dense foods help in boosting immunity and preventing disease.'),
                      buildItemText(
                          '• Supports Mental Clarity: Pathyakar foods nourish the body and mind, improving focus and clarity.'),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget buildSubSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget buildItemText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 4.0),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: '• ',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: Colors.red,
              ),
            ),
            if (text.contains('Fennel –')) ...[
              const TextSpan(
                text: 'Fennel – ',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              TextSpan(
                text: text.replaceFirst('Fennel – ', ''),
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
            ] else ...[
              TextSpan(
                text: text.substring(2),
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
