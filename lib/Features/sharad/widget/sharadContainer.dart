import 'package:donation_management/Features/shashira/controller/shashira_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';

class Sharadcontainer extends StatelessWidget {
  const Sharadcontainer ({super.key});

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
                'Sharad',
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
                      "Sharad Ritu is the autumn season, typically occurring from September to November. In Ayurveda, this season is seen as a time for balance, as the excess Kapha dosha from the monsoon starts to subside, and Pitta dosha comes to the forefront. The body is more prone to conditions related to Pitta during this period, and Ayurvedic guidelines emphasize cooling, cleansing, and balancing practices to maintain harmony. ",
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
                        buildSectionTitle('Characteristics of Sharad Ritu '),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle('Dominant Dosha: Pitta dosha'),
                        buildItemText(
                            '•  becomes predominant during this season.'),
                     const SizedBox(height: 8.0),
                        buildSubSectionTitle("Weather:"),    
                        buildItemText(
                            '• The weather is generally clear, cool, and dry, making it an ideal time to cleanse the body'),
                         const SizedBox(height: 8.0),
                        buildSubSectionTitle("Agni (Digestive Fire): "),    
                        buildItemText(
                            '• Agni is usually strong during Sharad, which aids in digestion and elimination'),
                        
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
                        buildSectionTitle(' Cooling and Refreshing Foods:'),
                       
                        buildItemText(
                            '•  Focus on foods that are cooling and mild, as Pitta tends to aggravate during Sharad. '),

                            buildItemText("• o Examples: Cucumber, melons, leafy greens, and dairy products like milk and yogurt (in moderation)."),
                         SizedBox(height: 10,),
                        buildSubSectionTitle("Avoid Pungent, Sour, and Salty Foods:"),    
                        buildItemText(
                            '•  These foods can increase Pitta and lead to overheating of the body'),

                             buildItemText(
                            '•  Avoid spicy, sour, and overly salty foods like chilies, pickles, and fried foods. '),
                        SizedBox(height: 10,),
                        buildSubSectionTitle("Incorporate Sweet and Astringent Tastes:"), 
                         buildItemText(
                            '• These tastes help soothe the excess '),

                            SizedBox(height: 10,),
                        buildSubSectionTitle("Pitta"),
                        buildItemText(
                          "•  Examples: Sweet fruits (like grapes, apples, and pears), and astringent vegetables "),

                          buildItemText(
                          "•  (like pumpkin and zucchini).  "),
                           SizedBox(height: 10,),
                        buildSubSectionTitle("Consume Whole Grains:"),
                        buildItemText(
                          "• Barley and rice are particularly beneficial during Sharad Ritu, as they are cooling and easy to digest"),
                        
                         SizedBox(height: 10,),
                          buildSubSectionTitle("Drink Cool Liquids:"), 
                          buildItemText(
                          "•  Drink cool water or herbal teas like mint, coriander, or cucumber water to help balance Pitta and keep the body hydrated."),
                          
                          
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
                        buildSectionTitle('Lifestyle Guidelines (Vihara) '),
                        const SizedBox(height: 8.0),
                        buildSubSectionTitle('Stay Cool:'),
                        buildItemText(
                            '•  Avoid direct sunlight; stay in shaded or cool places., '),
                           SizedBox(height: 10,), 
                        buildSubSectionTitle("Bathing:"),    
                        buildItemText(
                            '• Take cool or lukewarm baths to soothe the body. Add sandalwood or lotus to the water if possible.'),
                            SizedBox(height: 10,),
                        buildSubSectionTitle("Clothing:"),   
                         buildItemText(
                            '• Wear light, breathable clothes.'),

                           SizedBox(height: 10,),
                        buildSubSectionTitle("Exercise:"),
                        buildItemText(
                          "• Do moderate exercise, but avoid overexertion."),
                       
                         SizedBox(height: 10,),
                          buildSubSectionTitle("Sleep:"), 
                          buildItemText(
                          "• Rest well at night in a cool, well-ventilated space. Avoid daytime naps."),
                          
                          SizedBox(height: 10,),
                          buildSubSectionTitle("Sun Protection:"), 
                          buildItemText(
                          "• Avoid the mid day sun to protect from excessive heat."),
                          
                          SizedBox(height: 10,),
                          buildSubSectionTitle("Manage Stress:"), 
                          buildItemText(
                          "• Stay calm and avoid anger; practice activities like meditation to balance Pitta.."),
                          
                          SizedBox(height: 10,),
                          buildSubSectionTitle("Raktamokshan:"), 
                          buildItemText(
                          "• Bloodletting therapy to reduce excess heat (under professional guidance)."),
                          
                          SizedBox(height: 10,),
                          buildSubSectionTitle("Tiktagritapan"), 
                          buildItemText(
                          "• Drink bitter ghee (Tiktagrita) to purify the body."),
                          
                          SizedBox(height: 10,),
                          buildSubSectionTitle("Virechana:"), 
                          buildItemText(
                          "• Avoid the mid day sun to protect from excessive heat."),
                          
                          SizedBox(height: 10,),
                          buildSubSectionTitle("Consult Your Practitioner:"), 
                          buildItemText(
                          "•  Always consult an Ayurvedic practitioner before undergoing therapies like Raktamokshan, Tiktagritapan, or Virechana"),
                          
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

