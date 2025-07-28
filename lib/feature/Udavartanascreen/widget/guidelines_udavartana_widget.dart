import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class GuidelinesUdavartanaWidget extends StatelessWidget {
  const GuidelinesUdavartanaWidget({super.key});

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
                'Guidelines for Udavartana:',
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
                        'Guidelines for Udavartana:',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      _redDotHeader('Herbal Powders:'),
                      _subBullet('The herbal powders used in Udavartana vary based on individual needs but typically include ingredients like Chandan, Turmeric, Sandalwood, and Triphala. These powders help to exfoliate, detoxify, and rejuvenate the skin.'),
                      _redDotHeader('Technique:'),
                      _subBullet('The powdered herbal mix is applied to the body in an upward motion, starting from the feet and moving towards the heart, stimulating circulation and lymphatic flow. The pressure can be adjusted according to the individual’s comfort level.'),
                      _redDotHeader('Duration:'),
                      _subBullet('The massage usually lasts between 15–30 minutes depending on the person’s needs'),
                      _redDotHeader('Time of Practice:'),
                      _subBullet('Best performed in the morning before bathing, as it opens the pores and facilitates the absorption of beneficial herbal properties.'),
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
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      _subBullet('Avoid Udavartana immediately after a heavy meal or if you are extremely fatigued.'),
                      _subBullet('Be cautious if you have sensitive or irritated skin'),
                      _subBullet('It is not recommended during fever, infections, or active inflammation.'),
                      _subBullet('Always consult a qualified Ayurvedic practitioner before selecting and using any Churna to ensure it suits your individual Prakriti (body constitution) and health needs.'),
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