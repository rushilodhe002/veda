import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';

class SeasonalApathyaWidget  extends StatelessWidget {
  const SeasonalApathyaWidget ({super.key});

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
                    'Seasonal Apathya ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '(Foods for Each Season)',
                    style: TextStyle(
                      fontSize: 15,
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
                    'Just as your diet should adapt to the seasons, avoid certain foods that are harmful in specific seasons.',
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
                       buildSectionTitle('Summer (Grishma Ritu):'),
                       Divider(),
                      buildItemText(
                          '• Heavy, oily foods like fried snacks or creamy dishes'),
                            const SizedBox(height: 10.0),
                      buildItemText('  Spicy and salty foods that increase Pitta and heat in the body.'),
                       const SizedBox(height: 10.0),
                      buildItemText(
                          '• Cold drinks with ice, which can weaken digestion.'),
                       const Divider(),
                      const SizedBox(height: 10.0),
                      buildSubSectionTitle('Monsoon (Varsha Ritu):'),
                      const Divider(),
                      buildItemText(
                          '• Cold and raw foods: These can cause digestive discomfort during the rainy season. '),
                            const SizedBox(height: 10.0),
                      buildItemText(
                          '• Damp or fermented foods: Avoid consuming heavy, damp foods as they may cause indigestion.'),
                            const SizedBox(height: 10.0),
                      buildItemText(
                          '•Excessive salty or sour foods can imbalance the body’s natural rhythms.'),
                      const SizedBox(height: 10.0),
                      const Divider(),
                      buildSubSectionTitle('Winter (Hemanta Ritu):'),
                      const Divider(),
                      buildItemText(
                          '• Light, dry foods: Avoid eating foods that are too light and dry during the colder months.'),
                            const SizedBox(height: 10.0),
                      buildItemText(
                          '• Excessively cooling foods like cold drinks or ice cream that may weaken the digestive fire (Agni).'),
                            const SizedBox(height: 10.0),
                        const SizedBox(height: 10.0),
                      const Divider(),
                        buildSubSectionTitle('Late Winter (Shishira Ritu):'),
                      const Divider(),
                      buildItemText(
                          '• Cold and damp foods like raw salads or chilled beverages.'),
                            const SizedBox(height: 10.0),
                      buildItemText(
                          '• Excessive sweet foods: These can increase Kapha and make the body feel sluggish.'),
                        const SizedBox(height: 10.0),
                      const Divider(),

                     
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