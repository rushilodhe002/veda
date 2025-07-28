import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class BenefitsUdavartanaWidget extends StatelessWidget {
  const BenefitsUdavartanaWidget({super.key});

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
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(
                  AppImages.backArrow,
                  height: 20,
                ),
              ),
              const SizedBox(width: 15),
              const Text(
                'Benefits of Udavartana:',
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
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 6.0,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Benefits of Udavartana:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  const BulletPoint(
                    title: 'Reduces Excess Body Fat:',
                    description: ' Helps in the reduction of Kapha and fat accumulation by stimulating fat metabolism and enhancing the burning of excess fat.',
                  ),
                  const BulletPoint(
                    title: 'Improves Circulation and Lymphatic Drainage:',
                    description: ' Stimulates blood and lymph circulation, aiding in the elimination of toxins (Ama) and improving overall vitality.',
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1.5, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: const BulletPoint(
                      title: 'Enhances Skin Texture:',
                      description: ' Exfoliates and tones the skin, leaving it smooth, radiant, and rejuvenated.',
                    ),
                  ),
                  const BulletPoint(
                    title: 'Improves Muscle Tone and Strength:',
                    description: ' The gentle friction from the powdered herbs tones muscles, promotes flexibility, and strengthens the body.',
                  ),
                  const BulletPoint(
                    title: 'Balances Doshas:',
                    description: ' Particularly beneficial for Kapha dosha by reducing stagnation and increasing lightness and energy.',
                  ),
                  const BulletPoint(
                    title: 'Boosts Digestion and Metabolism:',
                    description: ' Enhances digestive fire (Agni) and stimulates the metabolism, promoting better digestion and absorption.',
                  ),
                  const BulletPoint(
                    title: 'Reduces Swelling and Inflammation:',
                    description: ' Helps to reduce fluid retention and swelling by promoting detoxification and improving lymphatic drainage.',
                  ),
                  const BulletPoint(
                    title: 'Encourages Relaxation and Detoxification:',
                    description: ' Provides a calming effect while assisting in the release of built-up toxins from the body.',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String title;
  final String description;
  const BulletPoint({required this.title, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6.0),
            child: Icon(Icons.circle, size: 8, color: Colors.red),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 15),
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: description,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 