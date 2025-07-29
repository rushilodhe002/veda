import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/themes/app_text_style.dart';
import '../../../utils/constants/app_images.dart';
import '../../../utils/extension/sized_box_extension.dart';

class AnjanaMethodScreen extends StatelessWidget {
  const AnjanaMethodScreen({super.key});

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
                Text(
                  'Anjana - Method of Application',
                  style: AppTextStyle.largeHeader.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
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
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Preparation of Medicinal Paste
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.blue, width: 1.5, style: BorderStyle.solid),
                      ),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: EdgeInsets.only(right: 6.0, top: 4.0),
                                child: Icon(Icons.circle, size: 8, color: Colors.red),
                              ),
                              alignment: PlaceholderAlignment.middle,
                            ),
                            TextSpan(
                              text: 'Preparation of Medicinal Paste:',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
                            ),
                            TextSpan(text: '\n'),
                            TextSpan(
                              text: 'Anjana typically involves the use of herbal preparations like Sauviranjana or Rasanjana, which are ground into a fine paste or powder and then used for eye care.',
                              style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                    20.height,
                    // Application Process
                    _buildSection(
                      'Application Process:',
                      [
                        'The herbal paste or powder is gently applied to the lower eyelid using a soft applicator, traditionally a fine stick or a cotton swab.',
                        'The substance is applied on the external part of the lower eyelid (not directly on the eye) and left overnight to be absorbed, allowing the eyes to benefit from the medicinal properties during rest.',
                      ],
                    ),
                    20.height,
                    // Purpose
                    _buildSection(
                      'Purpose:',
                      [
                        'The purpose of both Anjana, Sauviranjana, and Rasanjana is to nourish and strengthen the eye muscles, improve vision, and relieve tiredness, strain, or irritation caused by environmental factors.',
                        'It helps balance Pitta dosha, which is closely related to eye health, and alleviates conditions such as redness, inflammation, and dryness.',
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