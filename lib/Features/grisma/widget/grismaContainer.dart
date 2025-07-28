import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';

class Grismacontainer extends StatelessWidget {
  const Grismacontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                SvgPicture.asset(AppImages.backArrow,height: 20,),
                const SizedBox(width: 15,),
                const Text(
                'Grisma',
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
                      'Grishma Ritu is the summer season, typically occurring from May to June in the Indian calendar. This season is characterized by intense heat and dryness. In Ayurveda, Grishma Ritu is primarily associated with Pitta dosha because the heat, dryness, and sharpness of the environment increase the intensity of Pitta in the body. To stay balanced during this time, Ayurveda suggests cooling, hydrating, and soothing practices to counteract the effects of excessive heat',
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
                        buildSectionTitle('correction grishma ritu:'),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle('Dominant Dosha: Pitta dosha is'),
                        buildItemText(
                            '•  aggravated during this season due to the intense heat and dryness. '),
                    
                        buildSubSectionTitle("Weather:"),    
                        buildItemText(
                            '• he weather is hot, dry, and intense, leading to the body being more prone to dehydration and overheating'),
                        
                        buildSubSectionTitle("Agni (Digestive Fire): "),    
                        buildItemText(
                            '• Agni becomes variable; it may be sharp in the middle of the day but weak during the hot afternoons'),
                        
                      ],
                    ),
                  ),

                  //second container
                   SizedBox(height: 10,),
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
                        buildSectionTitle('Dietary Guidelines (Ahara)'),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle('Cooling Foods:'),
                        buildItemText(
                            '•  Cucumbers, melons, leafy greens, and gourds.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Grains:"),    
                        buildItemText(
                            '•  rice (Purana Shali), barley, and wheat.'),
                        SizedBox(height: 10,),
                        buildSubSectionTitle("Sweet, Bitter, and Astringent Tastes:"), 
                         buildItemText(
                            '• Foods with sweet, bitter, and astringent tastes are beneficial during Grishma Ritu as they reduce excess Pitta.'),

                            SizedBox(height: 10,),
                        buildSubSectionTitle("Legumes"),
                        buildItemText(
                          "• Sattu (roasted gram flour) for cooling and energy."),
                           SizedBox(height: 10,),
                        buildSubSectionTitle("Dairy"),
                        buildItemText(
                          "• Milk, ghee, and butter for nourishment."),
                        
                         SizedBox(height: 10,),
                          buildSubSectionTitle("Meat:"), 
                          buildItemText(
                          "•  Lean meat from wild animals (Jangal Pashu Mamsa) for strength "),
                          
                           SizedBox(height: 10,),
                          buildSubSectionTitle("Fluids:"), 
                          buildItemText(
                          "•   Buttermilk, coconut water, sugarcane juice, and rose drinks. "),
                          
                           SizedBox(height: 10,),
                          buildSubSectionTitle("Sweet Fruits:"), 
                          buildItemText(
                          "•  Grapes, dates, and mangoes. "),
                          
                      ],
                    ),
                  ),
                  //third container
                  SizedBox(height: 10,),
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
                        buildSectionTitle('Lifestyle Guidelines (Vihara'),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle('Stay Cool:'),
                        buildItemText(
                            '•  Wear cotton clothes, stay indoors during midday, and use sandalwood paste on body'),
                           SizedBox(height: 10,), 
                        buildSubSectionTitle("Bathing:"),    
                        buildItemText(
                            '• Take cool or lukewarm baths.'),
                            SizedBox(height: 10,),
                        buildSubSectionTitle("Rest:"),   
                         buildItemText(
                            '• Sleep in cool places; daytime naps are allowed.'),

                           SizedBox(height: 10,),
                        buildSubSectionTitle("Exercise:"),
                        buildItemText(
                          "•Do light activities in the morning or evening."),
                       
                         SizedBox(height: 10,),
                          buildSubSectionTitle("Protect from Sun:"), 
                          buildItemText(
                          "• Avoid sun exposure during peak hours."),
                          
                          SizedBox(height: 10,),
                          buildSubSectionTitle("Avoid Fasting:"), 
                          buildItemText(
                          "• Eat light, nourishing meals to maintain energy"),
                          
                      ],
                    ),
                  ),
                  //fourth container
                  SizedBox(height: 10,),
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
                        buildSectionTitle("Do's and Don'ts in Grishma Ritu:"),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle("Do's:"),
                        SizedBox(height: 10,),
                         buildSubSectionTitle("Stay Hydrated:"),
                        buildItemText(
                            '•  Drink water, buttermilk, coconut water, and cooling drinks like rose or sandalwood sharbat.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Eat Cooling Foods:"),    
                        buildItemText(
                            '• Include melons, cucumbers, leafy vegetables, milk, and ghee.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Protect from Heat:"),    
                        buildItemText(
                            '• Stay indoors during peak sunlight, wear cotton clothes, and apply sandalwood paste.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Take Cool Baths:"),    
                        buildItemText(
                            '• Use cool or lukewarm water for bathing.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Rest:"),    
                        buildItemText(
                            '• Take naps during the day to prevent fatigue.'),
                        
                        
                      ],
                    ),
                  ),

                  SizedBox(height: 10,),
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
                        buildSectionTitle("Do's and Don'ts in Grishma Ritu:"),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle("Don’ts "),
                        SizedBox(height: 10,),
                         buildSubSectionTitle("Avoid Spicy Foods:"),
                        buildItemText(
                            '•  Reduce hot, sour, or salty foods.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Avoid Heavy Foods:"),    
                        buildItemText(
                            '• Skip oily or fried meals Limit Alcohol and Caffeine: These drinks dehydrate you.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Avoid Overexertion:"),    
                        buildItemText(
                            '• Don’t do intense activities in the sun.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Skip Ice-Cold Items:"),    
                        buildItemText(
                            '• Too much cold weakens digestion.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Rest:"),    
                        buildItemText(
                            '•  Take naps during the day to prevent fatigue.'),
                        
                        
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

