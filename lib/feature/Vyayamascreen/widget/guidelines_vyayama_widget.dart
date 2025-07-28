import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class GuidelinesVyayamaWidget extends StatelessWidget {
  const GuidelinesVyayamaWidget({super.key});

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
                'Guidelines for Vyayama',
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
                        'Guidelines for Vyayama (As per Ayurveda)',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 12),
                      const BulletPoint(
                        title: 'Duration::',
                        description: ' Exercise until half your physical capacity is reached (Ardha Shakti), indicated by sweating on the forehead and difficulty in breathing\n• Overexertion (Ativyayama) should be avoided as it can aggravate Vata and Pitta Doshas.',
                      ),
                      const BulletPoint(
                        title: 'Time:',
                        description: ' Perform exercise in the morning (Kapha Kala) for maximum benefit',
                      ),
                      const BulletPoint(
                        title: 'Seasonal Considerations:',
                        description: ' Reduce intensity during summer and autumn (Pitta seasons).\n• Increase intensity during winter and spring (Kapha and Vata seasons).',
                      ),
                      const BulletPoint(
                        title: 'Alternative for Exercise:',
                        description: ' If you prefer a gentler routine, Yoga Asanas are an excellent alternative.\n• Yoga combines physical activity with mindfulness, making it suitable for all body types and ages.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
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
                        'Yoga Asanas as an Alternative to Exercise:',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      const Text('• Yoga offers similar benefits to exercise while being gentler on the body.'),
                      const SizedBox(height: 8),
                      const Text('• Some recommended asanas:'),
                      const SizedBox(height: 8),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Vata Balancing: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Trikonasana (Triangle Pose), Vrikshasana (Tree Pose)\n',
                            ),
                            TextSpan(
                              text: 'Pitta Balancing: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Shavasana (Corpse Pose), Paschimottanasana (Seated Forward Bend).\n',
                            ),
                            TextSpan(
                              text: 'Kapha Balancing: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Surya Namaskar (Sun Salutation), Utkatasana (Chair Pose).',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
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
                        'Precautions:',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      const BulletPoint(
                        title: '',
                        description: 'Avoid exercising or practicing asanas on an empty stomach or after a heavy meal',
                      ),
                      const BulletPoint(
                        title: '',
                        description: 'Stop immediately if you feel dizziness, breathlessness, or excessive fatigue.',
                      ),
                      const BulletPoint(
                        title: '',
                        description: 'Always cool down with stretching or relaxation practices',
                      ),
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