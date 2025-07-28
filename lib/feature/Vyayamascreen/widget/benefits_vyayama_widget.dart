import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class BenefitsVyayamaWidget extends StatelessWidget {
  const BenefitsVyayamaWidget({super.key});

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
                'Benefits of Vyayama',
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
                    'Benefits of Vyayama :',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  const BulletPoint(
                    title: 'Improves Strength and Endurance:',
                    description: ' Enhances physical strength (Bala), stamina, and stability (Sthairya).',
                  ),
                  const BulletPoint(
                    title: 'Balances Doshas:',
                    description: ' Primarily pacifies Kapha Dosha, reducing heaviness and lethargy',
                  ),
                  const BulletPoint(
                    title: 'Boosts Circulation:',
                    description: ' Improves blood flow and oxygen supply to tissues (Dhatus), promoting detoxification.',
                  ),
                  const BulletPoint(
                    title: 'Supports Digestive Fire (Agni):',
                    description: ' Stimulates metabolism, ensuring proper digestion and absorption of nutrients',
                  ),
                  const BulletPoint(
                    title: 'Enhances Immunity (Ojas):',
                    description: ' Builds resilience against diseases and strengthens the immune system.',
                  ),
                  const BulletPoint(
                    title: 'Promotes Joint Health:',
                    description: ' Lubricates joints and improves mobility, reducing stiffness and preventing degenerative conditions.',
                  ),
                  const BulletPoint(
                    title: 'Improves Mental Clarity:',
                    description: ' Reduces stress and anxiety while boosting focus and mental sharpness (Dhi).',
                  ),
                  const BulletPoint(
                    title: 'Aids in Weight Management:',
                    description: ' Helps reduce excess body fat and maintain a healthy body weight.',
                  ),
                  const BulletPoint(
                    title: 'Encourages Better Sleep:',
                    description: ' Relieves physical and mental tension, promoting deep and restful sleep',
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