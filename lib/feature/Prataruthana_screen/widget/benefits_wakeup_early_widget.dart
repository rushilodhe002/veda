import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class BenefitsWakeupEarlyWidget extends StatelessWidget {
  const BenefitsWakeupEarlyWidget({super.key});

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
                'benefits of wake up early',
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
                    'Brahma Muhurta :',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Time to Wake Up:\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'The ideal time to wake up during the Brahma Muhurta is around ',
                        ),
                        TextSpan(
                          text: '4:00 AM to 4:30 AM',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ', depending on the time of sunrise in your location. This time may vary slightly depending on your geographical location, but it is always around the pre-dawn period.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Benefits of Waking Up During Brahma Muhurta:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  const BulletPoint(
                    title: 'Mental Clarity and Focus:',
                    description: ' Waking up early allows your mind to be calm, clear, and focused for the rest of the day. It enhances productivity and helps you engage in tasks with full concentration.',
                  ),
                  const BulletPoint(
                    title: 'Increased Energy Levels:',
                    description: ' The air is fresher and purer during this time, providing a boost to your physical energy and vitality. It also enhances immunity and helps balance doshas.',
                  ),
                  const BulletPoint(
                    title: 'Spiritual Growth:',
                    description: ' The peaceful environment of Brahma Muhurta allows for deeper spiritual practices like meditation, prayer, or contemplation, fostering spiritual growth.',
                  ),
                  const BulletPoint(
                    title: 'Optimized Digestion and Health:',
                    description: ' According to Ayurveda, waking up early is beneficial for your digestive health and overall well-being. It ensures that you can follow a proper Dinacharya (daily routine) that enhances digestion and prevents sluggishness.',
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