import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class VasantContainer extends StatelessWidget {
  const VasantContainer({super.key});

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
                'Vasant',
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
                    'Vasanta Ritu is the spring season, typically falling between March and May in the Indian calendar. It represents a time of transition, where the weather starts to warm up, and the accumulated Kapha dosha from the winter season begins to liquefy, potentially causing imbalances if not addressed. Ayurveda provides specific dietary and lifestyle guidelines for Vasanta Ritu, as detailed in Charaka Samhita and Ashtanga Hridaya.',
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
                    children: const [
                      Text('Characteristics of Vasanta Ritu', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8.0),
                      Text('• Dominant Dosha: Kapha dosha is aggravated due to the melting of accumulated Kapha from winter.'),
                      Text('• Weather: The weather is hot, dry, and intense, leading to the body being more prone to dehydration and overheating.'),
                      Text('• Agni (Digestive Fire): The digestive fire is weaker compared to the winter season, leading to a reduced ability to digest heavy or oily foods.'),
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
                      Text('• Light, Easily Digestible Foods:\n  Consume foods that are light and easy to digest to avoid aggravating Kapha.\n  Examples: Barley, wheat, millet, lentils, and vegetables like spinach and bitter gourd.'),
                      Text('• Incorporate Bitter, Astringent, and Pungent Tastes:\n  These tastes help balance Kapha and cleanse the body.'),
                      Text('• Examples:'),
                      Text('  - Bitter: Fenugreek, neem, turmeric.'),
                      Text('  - Astringent: Lentils, pomegranate, green tea.'),
                      Text('  - Pungent: Ginger, black pepper, mustard.'),
                      Text('• Avoid Heavy, Oily, and Sweet Foods:\n  Avoid dairy, excessive sweets, and fried or oily foods, as they increase Kapha.'),
                      Text('• Include Honey:\n  Honey is particularly beneficial as it helps reduce Kapha. Use it as a natural sweetener.'),
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
                      Text('• Stay in Fresh Air: Spend time outdoors to help clear excess Kapha and refresh the body.'),
                      Text('• Bathing: Take a warm or lukewarm bath with cooling herbs like sandalwood to refresh and balance Pitta.'),
                      Text('• Clothing: Wear light, breathable clothes to stay cool and comfortable.'),
                      Text('• Exercise: Do moderate activities like walking or yoga to improve digestion and circulation.'),
                      Text('• Sleep: Get enough rest at night and avoid excessive daytime sleep.'),
                      Text('• Sun Exposure: Enjoy sunlight in the morning or evening, but avoid midday sun to balance Pitta.'),
                      Text('• Dhumrapan (Medicinal Smoking): Smoke medicinal herbs to clear mucus and strengthen the lungs. Consult your Ayurvedic practitioner before trying this.'),
                      Text('• Kavala Dharan (Oil Pulling): Swish medicated oils in your mouth to improve oral health and balance Kapha. Consult your Ayurvedic practitioner for guidance on the right oils.'),
                      Text('• Anjan (Eye Care): Use medicated eye drops to soothe and cleanse the eyes.'),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                // Do's and Don'ts in Vasanta Ritu
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
                      Text("Do's and Don'ts in Vasanta Ritu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 8.0),
                      Text("Do's:", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('• Consume light and warming foods.'),
                      Text('• Include seasonal, bitter, and pungent vegetables in your meals.'),
                      Text('• Exercise regularly to reduce Kapha.'),
                      Text('• Practice daily Udvartana (dry massage).'),
                      SizedBox(height: 8.0),
                      Text("Don'ts:", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('• Avoid cold and heavy foods like ice cream, butter, or excessive sweets.'),
                      Text('• Do not skip exercise or indulge in lethargy.'),
                      Text('• Avoid exposure to damp or overly humid conditions.'),
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