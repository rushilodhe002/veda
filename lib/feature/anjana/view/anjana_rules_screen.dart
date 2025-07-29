import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/themes/app_text_style.dart';
import '../../../utils/constants/app_images.dart';
import '../../../utils/extension/sized_box_extension.dart';

class AnjanaRulesScreen extends StatelessWidget {
  const AnjanaRulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFFFD4),
      body: Column(
        children: [
          // Header
          Container(
            color: Colors.green[800],
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    AppImages.backArrowIcon,
                    height: 35,
                    width: 35,
                    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                15.width,
                const Flexible(
                  child: Text(
                    'Rules for Using Sauviranjana and Rasanjana:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
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
                    _buildSection(
                      'Daily Use:',
                      [
                        'Sauviranjana and Rasanjana are generally safe for regular use as recommended by your Ayurvedic practitioner.',
                        'Use a clean applicator for each use to avoid contamination.',
                        'Apply a small amount to the lower eyelid as directed.',
                      ],
                    ),
                    20.height,
                    _buildSection(
                      'Best Time to Apply:',
                      [
                        'The best time for application is typically in the evening or before sleep, allowing the medicinal properties to work overnight.',
                        'Follow your practitioner’s advice for frequency and timing.',
                      ],
                    ),
                    20.height,
                    _buildSection(
                      'Precautions:',
                      [
                        'Ensure the preparation is of high quality and specifically intended for ophthalmic (eye) use.',
                        'Do not apply directly on the eyeball; only on the lower eyelid as instructed.',
                        'Avoid use if you have an active eye infection, injury, or severe irritation unless advised by a healthcare professional.',
                        'Consult your Ayurvedic practitioner before starting if you have any pre-existing eye conditions or concerns.',
                        'Discontinue use and seek medical advice if you experience pain, redness, or worsening symptoms.',
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
                fontSize: 16,
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
                '• ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Text(
                  point,
                  style: const TextStyle(
                    fontSize: 15,
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