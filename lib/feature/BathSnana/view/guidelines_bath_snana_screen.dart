import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/themes/app_text_style.dart';
import '../../../utils/constants/app_images.dart';
import '../../../utils/extension/sized_box_extension.dart';

class GuidelinesBathSnanaScreen extends StatelessWidget {
  const GuidelinesBathSnanaScreen({super.key});

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
                    'Guidelines for Bathing (Snana):',
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
                    _buildSection('Water Temperature:', [
                      'Warm water is recommended for most people as it helps to relax the veins, improve circulation or open the pores.',
                      'Cool water should be used for those with excess Pitta to cool and calm the body.',
                    ]),
                    16.height,
                    _buildSection('Use of Herbs and Essential Oils:', [
                      'Adding Ayurvedic herbs like Neem, Tulsi, or Rose to the bathwater can enhance the nourishing effect. These herbs can help purify the skin, soothe the mind, and balance doshas.',
                      'Essential oils such as Lavender, Sandalwood, or Rosemary can also be added for calming or invigorating effect.',
                    ]),
                    16.height,
                    _buildSection('Bathing Time:', [
                      'The bath should be taken either a short while after waking up (or optionally after applying oil for massage) to open the pores and help the body rid itself of toxins of the first bath.',
                      'It is best to bathe in the morning or early afternoon to refresh the body and mind. Avoid bathing right after a meal or when feeling fatigued.',
                    ]),
                    16.height,
                    _buildSection('Method of Bathing:', [
                      'Begin by wetting the body with warm water, avoid the head.',
                      'Gently scrub the skin using a soft sponge or scrub to stimulate circulation and remove dead skin cells.',
                      'Oils if the heated mixture or oils thoroughly to leave the skin feeling nourished.',
                    ]),
                    16.height,
                    _buildSection('Duration of Bath:', [
                      'The bath should not be too long. Ideally, spend 5–15 minutes in the bath to avoid excess dryness or irritation.',
                    ]),
                    16.height,
                    _buildSection('Classical References:', [
                      'Snana karma vidhi: praksha, snana abho shastra drisht (Classical Sanskrit Sutras/Texts of Bathing) is key practice for physical and mental purification, promoting peace and vitality.',
                      'Shiroshna, parshva, and snana are the important practices for maintaining a balanced and healthy body. (Ashthanga Hridaya Sutrasthana V) These practices help in maintaining the body’s equilibrium and vitality.',
                    ]),
                    16.height,
                    _buildSection('Precautions:', [
                      'Avoid bathing in very hot water if you have Pitta imbalance, skin irritation, or dehydration.',
                      'Do not use harsh soaps or chemicals that may strip the skin of its natural oils.',
                      'If you are experiencing fever or any infection, it is advisable to avoid or shorten bathing sessions.',
                      'After the bath, allow the body to cool down gradually, especially if using hot water, to avoid shocking the system.',
                    ]),
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
        10.height,
        ...points.map((point) => Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 6.0),
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