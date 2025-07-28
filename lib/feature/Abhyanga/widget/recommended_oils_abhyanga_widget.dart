import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class RecommendedOilsAbhyangaWidget extends StatelessWidget {
  const RecommendedOilsAbhyangaWidget({super.key});

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
                'Recommended Oils for \nAbhyanga',
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
                        'Recommended Oils for Abhyanga',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      _redDotHeader('Based on Dosha Imbalance:'),
                      _subBullet('Vata: Warm sesame oil or herbal oils like Ashwagandha Bala Lakshadi Taila'),
                      _subBullet('Pitta: Cooling oils like coconut oil or Chandan Bala Lakshadi Taila.'),
                      _subBullet('Kapha: Light oils like mustard oil or Triphala Taila'),
                      const SizedBox(height: 10),
                      _redDotHeader('Based on Season:'),
                      _subBullet('Winter (Hemanta): Warm sesame oil or medicated oils for Vata dominance.'),
                      _subBullet('Summer (Grishma): Cooling oils like coconut or sandalwood oil.'),
                      _subBullet('Rainy Season (Varsha): Warming oils like sesame or castor oil to counter dampness'),
                      const SizedBox(height: 10),
                      _redDotHeader('In General:'),
                      _subBullet('Til Taila (Sesame Oil): Sesame oil is universally beneficial and suitable for daily use across all seasons. It is tridoshic (balances all three doshas) and can be adjusted with herbs to suit seasonal or individual needs.'),
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
                        'Instructions for Abhyanga:',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      _redDotHeader('Before Bathing:'),
                      _subBullet('Perform Abhyanga in the morning before taking a warm bath or shower'),
                      _redDotHeader('Warm the Oil:'),
                      _subBullet('Heat the oil to a comfortable temperature for better absorption.'),
                      _redDotHeader('Massage Technique:'),
                      _subBullet('Use long strokes on limbs and circular motions on joints.'),
                      _subBullet('Massage the abdomen and chest in clockwise circular motions'),
                      _subBullet('Spend extra time on the scalp, ears, and feet.'),
                      _redDotHeader('Duration:'),
                      _subBullet('Ideally, 15–30 minutes to allow oil penetration'),
                      _redDotHeader('Post-Massage:'),
                      _subBullet('Rinse off excess oil with warm water or a mild Ayurvedic soap.'),
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

  static Widget _redDotHeader(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6.0),
            child: Icon(Icons.circle, size: 8, color: Colors.red),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _subBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, top: 2, bottom: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6.0),
            child: Icon(Icons.circle, size: 6, color: Colors.black54),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 13.5, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
} 