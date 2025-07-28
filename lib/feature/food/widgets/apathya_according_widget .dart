import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';

class ApathyaAccordingWidget extends StatelessWidget {
  const ApathyaAccordingWidget({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apathya Ahar According to..',
                    style: TextStyle(
                      fontSize: 20,
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
                    'Each dosha has different characteristics, and consuming certain foods can worsen the doshas imbalances',
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
                      buildSectionTitle('For Vata (Dry, Cold, Light)'),
                      Divider(),
                      buildItemText(
                          '• Dry, cold, and rough foods : such as cucumbers, melons, and coconut '),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '  Frozen or chilled foods:  These disturb Vata and slow down digestion'),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '• Excessive raw foods : Cold salads and raw vegetables can make Vata more imbalanced.'),
                      const Divider(),
                      const SizedBox(height: 10.0),
                      buildSubSectionTitle('For Pitta (Hot, Sharp, Oily)'),
                      const Divider(),
                      buildItemText(
                          '• Spicy, sour, and salty foods: These can increase Pitta and cause acidity or heartburn. '),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '• Alcohol and caffeinated drinks:  These heat the body and disturb digestion, especially for Pitta.'),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '• Caffeinated drinks: Coffee and energy drinks can increase Pitta and Vata, disrupting balance and digestion. '),
                      const SizedBox(height: 10.0),
                      const Divider(),
                      buildSubSectionTitle('For Kapha (Heavy, Oily, Cool)'),
                      const Divider(),
                      buildItemText(
                          '• Cold, heavy, and greasy foods: Ice cream, cheese, and heavy, oily foods are not suitable for Kapha '),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '• Excessive dairy:  Heavy dairy foods like cheese can increase Kapha and cause weight gain..'),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '• Sweet and starchy foods: Foods like pastries, white bread, and sugary snacks can cause Kapha to become too heavy and sluggish. '),
                      const SizedBox(height: 10.0),
                      const Divider(),
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
