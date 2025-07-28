import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_images.dart';

class BenefitsBathSnanaWidget extends StatelessWidget {
  const BenefitsBathSnanaWidget({super.key});

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
                'Benefits of Bathing (Snana):',
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
                    'Benefits of Bathing (Snana):',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  _redDotHeader('Cleanses the Body and Mind:'),
                  _subBullet('Removes toxins and impurities from the skin, improving overall health and vitality.'),
                  _subBullet('Promotes mental clarity by refreshing the mind and reducing stress'),
                  _redDotHeader('Balances the Doshas:'),
                  _subBullet('A warm bath can soothe Vata dosha, while a cool bath can pacify Pitta dosha. A neutral temperature bath helps balance Kapha dosha'),
                  _redDotHeader('Enhances Circulation:'),
                  _subBullet('Stimulates blood flow, improving oxygen supply to tissues and removing waste products from the body'),
                  _redDotHeader('Relieves Muscle Tension:'),
                  _subBullet('Soothes and relaxes the muscles, promoting deep relaxation and stress relief'),
                  _redDotHeader('Improves Skin Health:'),
                  _subBullet('Regular bathing helps maintain healthy, glowing skin by removing dirt, oil, and dead skin cells.'),
                  _redDotHeader('Boosts Immunity:'),
                  _subBullet('Helps maintain a strong immune system by opening the pores and promoting the release of toxins.'),
                  _redDotHeader('Detoxifies the Body:'),
                  _subBullet('Bathing can aid in the elimination of toxins (Ama) and impurities through the skin, promoting overall detoxification.'),
                  _redDotHeader('Promotes Restful Sleep:'),
                  _subBullet('A warm bath before bed can induce relaxation and help prepare the body for a peaceful night’s sleep.'),
                ],
              ),
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