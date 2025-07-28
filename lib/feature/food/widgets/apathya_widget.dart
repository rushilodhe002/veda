import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';

class ApathyaWidget extends StatelessWidget {
  const ApathyaWidget({super.key});

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
                    'Apathya Ahar',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' (Harmful Foods) in Apathya.',
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
                    'In Ayurveda, Apathya Ahar refers to foods that disrupt the balance of your body s energies (doshas) and can lead to health issues. These foods may impair digestion, cause toxins (ama) to build up in the body, or worsen specific dosha imbalances. Here’s a guide to help you avoid certain foods based on your dosha and the season',
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
                       buildSectionTitle('General Apathya Ahar Harmful for All Doshas)'),
                      buildItemText(
                          '- These foods are generally not mended in Ayurveda as they can disturb digestion and overall health: '),
                      buildItemText('  General Apathya Ahar Harmful for All DFoods that are too Heavy or Hard to Digest: oshas) '),
                      const Divider(),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '• Fried foods: They are greasy, hard to digest, and can disturb your digestion'),
                      buildItemText(
                          '• Processed foods: Packaged snacks, artificial foods, and those high in preservatives are not beneficial for digestion.. '),
                      buildItemText('• Cold and frozen foods: These slow dwn the digestive fire (Agni) and can make digestion sluggish. '),
                      const Divider(),
                      const SizedBox(height: 10.0),
                      buildSubSectionTitle('Foods that Cause Imbalance in Digestion:'),
                      const Divider(),
                      buildItemText(
                          '• Excessive dairy: Milk in large antities, especially when combined with sour or salty foods, can cause imbalance. . '),
                      buildItemText(
                          '• Excessive salty, sour, or pungent foods: These can aggravate Pitta and lead to excess heat in the body. .'),
                      buildItemText(
                          '• Caffeinated drinks: Coffee and energy drinks can increase Pitta and Vata, disrupting balance and digestion. '),
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

