import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class BenefitsAbhyangaWidget extends StatelessWidget {
  const BenefitsAbhyangaWidget({super.key});

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
                'Benefits of Abhyanga:',
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
                    'Benefits of Abhyanga:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  const BulletPoint(
                    title: 'Nourishes and Strengthens the Body:',
                    description: ' Improves muscle tone, strengthens tissues, and promotes overall vigor and stamina.',
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
                      title: 'Balances Doshas:',
                      description: ' Especially effective for pacifying Vata Dosha, which governs movement and can lead to dryness, stiffness, and anxiety when imbalanced.',
                    ),
                  ),
                  const BulletPoint(
                    title: 'Enhances Circulation:',
                    description: ' Stimulates blood flow, aiding in detoxification and ensuring proper nourishment of tissues (Dhatus).',
                  ),
                  const BulletPoint(
                    title: 'Improves Skin Health:',
                    description: ' Keeps the skin soft, supple, and glowing while preventing dryness and aging signs.',
                  ),
                  const BulletPoint(
                    title: 'Promotes Better Sleep:',
                    description: ' Relaxes the nervous system, reducing stress and promoting deep, restful sleep (Nidra).',
                  ),
                  const BulletPoint(
                    title: 'Lubricates Joints:',
                    description: ' Improves joint mobility and reduces stiffness, making it beneficial for conditions like arthritis.',
                  ),
                  const BulletPoint(
                    title: 'Boosts Immunity (Ojas):',
                    description: ' Regular practice enhances the body’s natural defense mechanisms.',
                  ),
                  const BulletPoint(
                    title: 'Removes Toxins (Ama):',
                    description: ' Facilitates the elimination of toxins from the body through improved lymphatic drainage.',
                  ),
                  const BulletPoint(
                    title: 'Rejuvenates the Mind:',
                    description: ' Enhances mental clarity, calms the mind, and reduces fatigue or burnout.',
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