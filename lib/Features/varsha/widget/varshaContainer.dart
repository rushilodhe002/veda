import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class VarshaContainer extends StatelessWidget {
  const VarshaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              SvgPicture.asset(AppImages.backArrow, height: 20),
              const SizedBox(width: 15),
              const Text(
                'Varsha',
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
                    'Varsha Ritu is the monsoon season, typically occurring from June to September in the Indian calendar. This season is characterized by heavy rains and humid weather. In Ayurveda, Varsha is seen as a time of Kapha dosha aggravation, as the moisture and coolness of the rains increase the body\'s internal moisture levels, leading to sluggish digestion, water retention, and possible infections. Ayurveda provides guidelines to balance this excess moisture and prevent imbalances during this season.',
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
                      const Text('Characteristics of Varsha Ritu', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8.0),
                      const Text('• Dominant Dosha: Pitta dosha becomes predominant during this season.'),
                      const Text('• Weather: The weather is generally clear, cool, and dry, making it an ideal time to cleanse the body.'),
                      const Text('• Agni (Digestive Fire): Agni is usually strong during Sharad, which aids in digestion and elimination.'),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                // Dietary Guidelines (Ahara)
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Dietary Guidelines (Ahara)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 8.0),
                      Text('• Easily Digestible Foods:\n  Warm, light foods like old grains (e.g., rice, wheat) cooked well.'),
                      Text('• Sour, Salty, and Unctuous Foods:\n  Foods with sour and salty tastes, cooked with ghee or oil, are ideal to pacify Vata and enhance digestion.'),
                      Text('• Honey:\n  Adding honey to meals is beneficial for digestion and Kapha balance.'),
                      Text('• Avoid:\n  Heavy, oily, cold, and stale foods, as they can aggravate Kapha and disturb digestion.'),
                      Text('• Fermented Drinks:\n  Mildly sour and fermented drinks like Asava and Arishta (herbal preparations) are recommended.'),
                      Text('• Spices with Ghee/oil:\n  Tempering spices like ginger, black pepper, and cumin in ghee or oil enhances digestion.'),
                      Text('• Warm Water:\n  Drink boiled and slightly warm water to ease digestion.'),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                // Lifestyle Guidelines (Vihara)
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Lifestyle Guidelines (Vihara)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 8.0),
                      Text('• Avoid Excess Exposure to Rain:\n  Prevent cold and dampness by using umbrellas, raincoats, and dry footwear.'),
                      Text('• Rest and Regulated Activity:\n  Avoid overexertion and ensure adequate sleep to prevent Vata aggravation.'),
                      Text('• Oil Massage:\n  Gentle application of warm oil (Abhyanga) helps pacify Vata.'),
                      Text('• Consult an Ayurvedic Practitioner for Basti Therapy:\n  Basti (medicated enema) is highly beneficial for balancing Vata but should be undertaken under the guidance of a qualified Ayurvedic.'),
                      Text('• Avoid Daytime Sleep:\n  This can lead to Kapha aggravation.'),
                      Text('• Avoid Contaminated Water:\n  Drink clean, boiled water to prevent waterborne diseases.'),
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
} 