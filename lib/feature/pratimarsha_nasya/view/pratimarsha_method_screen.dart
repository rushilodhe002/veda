import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/themes/app_text_style.dart';

class PratimarshaMethodScreen extends StatelessWidget {
  const PratimarshaMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFFFD4),
      body: Column(
        children: [
          // Header with dark green background
          Container(
            color: Colors.green[800],
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppImages.backArrowIcon,
                    height: 35,
                    width: 35,
                    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                15.width,
                Text(
                  "Pratimarsha Nasya - Method",
                  style: AppTextStyle.largeHeader
                      .copyWith(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
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
                  children: [
                    // Preparation Section
                    _buildSection(
                      "Preparation:",
                      [
                        "Pratimarsha Nasya typically involves using sesame oil or other herbal oils like Anu Taila, Kshirabala Taila, or Bala Taila, which are specifically prepared for nasal use. These oils can be easily purchased or prepared as per Ayurvedic guidelines.",
                      ],
                    ),
                    20.height,
                    
                    // Application Process Section
                    _buildSection(
                      "Application Process:",
                      [
                        "Lie on your back with your head slightly tilted back.",
                        "Using a dropper or your clean fingers, apply 1-2 drops of the oil into each nostril.",
                        "Gently inhale to allow the oil to be absorbed into the nasal passages.",
                        "After application, you can gently massage the bridge of the nose to aid absorption.",
                      ],
                    ),
                    20.height,
                    
                    // Purpose Section
                    _buildSection(
                      "Purpose:",
                      [
                        "Pratimarsha Nasya is performed to nourish the nasal passages, reduce dryness, and promote overall mental clarity. It also helps in clearing blockages in the sinuses, relieving headaches, and improving the flow of oxygen to the brain.",
                        "This practice is beneficial for maintaining the health of the upper respiratory system, balancing Vata dosha, and promoting overall well-being.",
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<String> points) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            8.width,
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        12.height,
        ...points.map((point) => Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "• ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Text(
                  point,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        )).toList(),
      ],
    );
  }
} 