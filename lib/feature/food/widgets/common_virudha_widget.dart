import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';

class CommonVirudhaWidget extends StatelessWidget {
  const CommonVirudhaWidget({super.key});

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
                    'Common Examples of Virudha..',
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
                    'Here are some common food combinations to avoid according to Ayurveda:',
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
                      buildItemText(
                          '•   Milk and Fruits:  Milk and fruits, especially citrus fruits (like oranges or lemons), cause digestive disturbance when consumed together. This combination may lead to mucus buildup and slow digestion'),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '   Dairy and Fish: ombining dairy products (like milk or cheese) with fish is considered incompatible in  Ayurveda. It can lead to digestive issues and imbalances in the body, as these foods have  different properties that don’t mix well.'),
                      const SizedBox(height: 10.0),
                      buildItemText(
                          '• Hot and Cold Foods Together : Consuming hot foods (like spicy curries) with cold foods (like ice cream or cold drinks) can confuse the digestive fire (Agni) and disturb digestion, leading to gas, bloating, and indigestion.'),
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
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
