import 'package:donation_management/utils/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';

class PathyakarAharForAllDoshas extends StatelessWidget {
  const PathyakarAharForAllDoshas({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         bottomNavigationBar: BottomNavBarWidget(),
              backgroundColor: AppColors.foodBgColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                  context.pop(context);
                },
                    child: SvgPicture.asset(AppImages.backArrow,height: 20,)),
                  const SizedBox(width: 15,),
                  const Text(
                  'Pathyakar Ahar for All Doshas:',
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
                        'These foods are universally beneficial for digestion, health, and balancing doshas',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
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
                          buildSectionTitle('Pathyakar Ahar for All Doshas:'),
                          const SizedBox(height: 8.0),
                          buildSubSectionTitle('Grains:'),
                          buildItemText(
                              '• Rice (Shashtika rice) – Helps to balance Vata and Pitta, and is easy to digest raw foods.'),
                          buildItemText(
                              '• Wheat – Nourishing and balances all three doshas when cooked properly.'),
                          buildItemText(
                              '• Barley – Light, cooling, and balancing for Pitta.'),
                          buildItemText(
                              '• Mung dal – Easy to digest and balances Vata and Pitta.'),
                              const Divider(),
                          const SizedBox(height: 16.0),
                          buildSubSectionTitle('Legumes:'),
                          buildItemText(
                              '• Mung beans – Highly digestible, cooling, and light on the stomach.'),
                          buildItemText(
                              '• Toor dal – Known for balancing all doshas when cooked properly.'),
                          buildItemText(
                              '• Chana dal – Balances Vata and Kapha, used in various Ayurvedic recipes.'),
                               const Divider(),
                          const SizedBox(height: 16.0),
                          buildSubSectionTitle('Fruits:'),
                          buildItemText(
                              '• Sweet fruits such as grapes, apples, bananas, and pomegranate – These are soothing for the digestive system.'),
                          buildItemText(
                              '• Coconut – Cooling and hydrating for Pitta; it also nourishes the body.'),
                          buildItemText(
                              '• Dates – Moisturizing and balancing for Vata; a good source of energy.'),
                          buildItemText(
                              '• Papaya – Aids digestion and is especially beneficial for Agni (digestive fire).'),
                               const Divider(),
                          const SizedBox(height: 16.0),
                          buildSubSectionTitle('Vegetables:'),
                          buildItemText(
                              '• Root vegetables (sweet potato, carrots, beets, and pumpkins) – These are grounding and nourishing for Vata.'),
                          buildItemText(
                              '• Leafy greens (spinach, kale, and lettuce) – Beneficial for Pitta and Kapha when used in moderation.'),
                          buildItemText(
                              '• Gourd family vegetables (bitter gourd, bottle gourd, zucchini) – Cooling and detoxifying, good for Pitta.'),
                               const Divider(),
                          const SizedBox(height: 16.0),
                          buildSubSectionTitle('Dairy:'),
                          buildItemText(
                              '• Ghee (Clarified butter) – Highly nourishing and beneficial for digestion; it helps in balancing all doshas.'),
                          buildItemText(
                              '• Milk – Sweet, cooling, and nourishing when consumed in moderation, especially beneficial for Vata and Pitta.'),
                          buildItemText(
                              '• Yogurt – When prepared correctly, it is good for digestion but can aggravate Pitta if taken excessively.'),
                               const Divider(),
                          const SizedBox(height: 16.0),
                          buildSubSectionTitle('Oils:'),
                          buildItemText(
                              '• Sesame oil – Good for Vata and Pitta; helps in grounding and lubricating the body.'),
                          buildItemText(
                              '• Coconut oil – Cooling and soothing for Pitta dosha.'),
                               const Divider(),
                          const SizedBox(height: 16.0),
                          buildSubSectionTitle('Spices:'),
                          buildItemText(
                              '• Cumin – Good for digestion and helpful in balancing Vata and Kapha.'),
                          buildItemText(
                              '• Coriander – Cooling and balances Pitta; helps in reducing toxins.'),
                          buildItemText(
                              '• Turmeric – Known for its anti-inflammatory and detoxifying properties.'),
                          buildItemText(
                              '• Cardamom – Soothing and beneficial for digestion, especially when combined with milk.'),
                          buildItemText(
                              '• Fennel – Aids digestion and is useful for gas and bloating.'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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
                fontWeight: FontWeight.bold, 
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
