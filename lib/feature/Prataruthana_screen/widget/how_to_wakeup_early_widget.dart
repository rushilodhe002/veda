import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class HowToWakeupEarlyWidget extends StatelessWidget {
  const HowToWakeupEarlyWidget({super.key});

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
                'how to wake up early',
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
                    'Rules for Waking Up During Brahma Muhurta:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  const BulletPoint(
                    title: 'Consistency:',
                    description: ' Try to wake up at the same time every day, even on weekends, to maintain a regular sleep cycle. Consistency strengthens your internal body clock and promotes better health',
                  ),
                  const BulletPoint(
                    title: 'Avoid Stimulants Before Bed:',
                    description: ' To wake up early and feel refreshed, avoid caffeine, heavy meals, or stimulating activities at least 2-3 hours before bedtime. Engage in calming activities like reading, light stretching, or listening to soothing music before sleeping.',
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1.5, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: const BulletPoint(
                      title: 'Create a Peaceful Sleep Environment:',
                      description: ' Ensure your sleeping area is conducive to restful sleep. Keep the room dark, quiet, and cool, and avoid electronic devices before bedtime to enhance the quality of sleep.',
                    ),
                  ),
                  const BulletPoint(
                    title: 'Start Slowly:',
                    description: ' If you are not accustomed to waking up early, start by gradually adjusting your bedtime and wake-up time in increments of 15-30 minutes to make the transition easier',
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