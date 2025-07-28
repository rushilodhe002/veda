import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';

class Hemantacontainer extends StatelessWidget {
  const Hemantacontainer({super.key});

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
                'Hemanta',
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
                      'Hemanta Ritu is the early winter season, typically occurring from November to December in the Indian calendar. This season is characterized by cool, dry weather, and the body begins to prepare for the colder months ahead. In Ayurveda, Hemanta Ritu is a time for Vata and Kapha dosha balancing, as the cold and dry atmosphere can increase Vata and excess moisture can still aggravate Kapha. The body needs nourishment, warmth, and grounding during this period to stay balanced',
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
                        buildSectionTitle('Characteristics of Hemanta Ritu'),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle('Dominant Dosha:'),
                        buildItemText(
                            '•  Vata and Kapha are predominant during this season, with Vata often increasing due to the cold and dry conditions, and Kapha being aggravated due to the lingering effects of the rainy season.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Weather:"),    
                        buildItemText(
                            '• Agni (Digestive Fire): During Hemanta, the digestive fire (Agni) becomes strong, and it is a good time to focus on nourishing and strengthening the body with warming foods'),
                        
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
                        buildSectionTitle('Lifestyle Guidelines (Vihara)'),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle('Moderate Exercise (Vyayama):'),
                        buildItemText(
                            '•  derate physical activities like walking, yoga, or light weight training are ideal to stimulate circulation and digestion without overexertion.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Abhyanga (Oil Massage):"),    
                        buildItemText(
                            '• Abhyanga with warming oils like sesame oil, mustard oil, or almond oil is recommended to nourish the skin, calm Vata, and prevent dryness.'),
                        
                         buildItemText(
                            '• Perform this daily for grounding and rejuvenating benefits.'),

                            SizedBox(height: 10,),
                        buildSubSectionTitle("Heavy and Oily Foods:"),
                        buildItemText(
                          "• Incorporate heavy and unctuous foods, which are grounding and nourishing during the colder months"),
                        buildItemText(
                          "• Include nuts, ghee, sesame oil, and sweet potatoes to support warmth and energy."),
                        
                         SizedBox(height: 10,),
                          buildSubSectionTitle("Avoid Cold and Dry Foods:"), 
                          buildItemText(
                          "• Avoid foods that are cold, dry, or raw, such as salads, cold drinks, or "),
                          
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
                        buildSubSectionTitle('Stay Warm:'),
                        buildItemText(
                            '•  Wear warm clothes and avoid exposure to cold winds'),
                             buildItemText(
                            '•  Keep your living space warm and cozy'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Daily Oil Massage (Abhyanga):"),    
                        buildItemText(
                            '• Massage your body with warm sesame oil to counteract dryness and improve circulation..'),
                        
                         buildItemText(
                            '• This practice also helps in balancing Vata and maintaining healthy skin'),

                            SizedBox(height: 10,),
                        buildSubSectionTitle("Exercise Regularly (Vyayama):"),
                        buildItemText(
                          "• Moderate exercise is beneficial to improve circulation and enhance body heat."),
                        buildItemText(
                          "• Activities like walking, yoga, or light gym routines are recommended"),
                        
                         SizedBox(height: 10,),
                          buildSubSectionTitle("Sunbathing (Surya Snana):"), 
                          buildItemText(
                          "• Expose yourself to sunlight during the morning hours to absorb natural warmth and maintain energy levels"),
                          
                          SizedBox(height: 10,),
                          buildSubSectionTitle("Adequate Sleep::"), 
                          buildItemText(
                          "• Ensure you get enough rest and avoid late nights, as the body needs extra energy to combat the cold."),
                          
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
                        buildSectionTitle('correction hemant ritu:'),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle("Do's:"),
                        buildItemText(
                            '•  Eat freshly cooked, warm meals.'),
                             buildItemText(
                            '•  Use warm water for bathing and drinking.'),
                             buildItemText(
                            '•  UApply herbal oils or moisturizers to prevent skin dryness.'),
                             buildItemText(
                            '•  Consume soups made with lentils, seasonal vegetables, and herbs.'),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Don'ts:"),    
                        buildItemText(
                            '• Avoid cold drinks, refrigerated food, and dry snacks.'),
                        
                         buildItemText(
                            '• Do not skip Abhyanga (oil massage) or exercise, as they are essential to maintain warmth and vitality.'),

                            
                          buildItemText(
                          "• Avoid prolonged exposure to cold and damp conditions."),
                          
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

