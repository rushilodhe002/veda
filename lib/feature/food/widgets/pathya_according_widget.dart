import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';

class PathyaAccordingWidget extends StatelessWidget {
  const PathyaAccordingWidget({super.key});

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
                const SizedBox(width: 15,),
                const Text(
                'Pathyakar Ahar According..',
                style: TextStyle(

                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
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
                      'Each dosha has different needs and characteristics, so foods are recommended specifically for each dosha.',
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
                        buildSectionTitle('Vata Balancing Foods:'),
                        const SizedBox(height: 8.0),
                        buildItemText('Vata is light, dry, and cold, so the following foods help to ground, warm, and nourish Vata::'),
                        buildItemText(
                            '• Warm, moist foods like soups and stews.'),
                        buildItemText(
                            '• Rice, wheat, and barley for grounding energy.'),
                        buildItemText(
                            '• Sweet fruits like apples, bananas, and avocados..'),
                        buildItemText(
                            '• Nuts and seeds, particularly sesame and almonds.'),
                            buildItemText(
                            '• Spices: Ginger, cinnamon, and cardamom for warmth and digestion.'),
                             buildItemText(
                            '• Ghee, oils like sesame and olive oil.'),
                            const Divider(),
                        const SizedBox(height: 10.0),
                        buildSubSectionTitle('Pitta Balancing Foods:'),
                        const  Divider(),
                        buildItemText(
                            '• Pitta is hot, sharp, and oily, so foods that are cooling and hydrating are recommended for Pitta:'),
                        buildItemText(
                            '• Sweet fruits like coconut, melons, and grapes..'),
                        buildItemText(
                            '• Cooling vegetables like cucumbers, zucchini, and leafy greens.'),
                            buildItemText('Rice and barley for lightness and cooling.'),
                            buildItemText('Dairy products like milk and ghee in moderation.'),
                            buildItemText('Spices: Coriander, fennel, and mint.'),
                            buildItemText('Coconut water and cucumber juice for hydration.'),
                             const Divider(),
                        const SizedBox(height: 10.0),
                        buildSubSectionTitle('Kapha Balancing Foods:'),
                          const Divider(),
                        buildItemText(
                            '• Kapha is heavy, oily, and cool, so foods that are light, dry, and stimulating help balance Kapha:'),
                        buildItemText(
                            '• Leafy greens and bitter vegetables like bitter gourd and spinach..'),
                        buildItemText(
                            '• Legumes like mung beans and lentils for protein.'),
                            buildItemText('• Spices: Black pepper, mustard, ginger, and garlic to stimulate metabolism.:'),
                            buildItemText('• Warm, cooked foods like khichdi and soups'),
                            buildItemText('• Herbal teas: Ginger tea, fennel tea, and lemon tea to support digestion.'),
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