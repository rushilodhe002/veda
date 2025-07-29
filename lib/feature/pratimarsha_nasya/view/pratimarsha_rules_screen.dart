import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/themes/app_text_style.dart';

class PratimarshaRulesScreen extends StatelessWidget {
  const PratimarshaRulesScreen({super.key});

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
                  "Rules for Using Pratimarsha \n Nasya:",
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
                    // Daily Use Section
                    _buildSection(
                      "Daily Use:",
                      [
                        "Frequency: Pratimarsha Nasya is generally safe for daily use and can be done every morning, preferably after your morning routine, such as bathing or brushing your teeth",
                        "It is important to use small amounts of oil (1-2 drops in each nostril) to avoid excess oil buildup.",
                      ],
                    ),
                    20.height,
                    
                    // Best Time to Apply Section
                    _buildSection(
                      "Best Time to Apply:",
                      [
                        "The best time for Nasya application is in the morning, ideally after waking up and completing your morning rituals. This ensures that the oil can work effectively throughout the day.",
                      ],
                    ),
                    20.height,
                    
                    // Precautions Section
                    _buildSection(
                      "Precautions:",
                      [
                        "Ensure that the oil you use is of **high quality** and is specifically designed for Nasya purposes.",
                        "Avoid applying Nasya when you have a **cold** or **nasal congestion**, unless advised by an Ayurvedic practitioner.",
                        "Be gentle while applying the oil and do not force it into the nostrils.",
                        "It is advisable to consult with your **Ayurvedic practitioner** before starting **Pratimarsha Nasya**, especially if you have specific nasal conditions or concerns. Your practitioner can recommend the most suitable oil or preparation for your needs and provide personalized guidance on the correct dosage and application technique.",
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
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.4,
                    ),
                    children: _parseTextWithBold(point),
                  ),
                ),
              ),
            ],
          ),
        )).toList(),
      ],
    );
  }

  List<TextSpan> _parseTextWithBold(String text) {
    List<TextSpan> spans = [];
    RegExp boldPattern = RegExp(r'\*\*(.*?)\*\*');
    int lastIndex = 0;
    
    for (Match match in boldPattern.allMatches(text)) {
      // Add text before the bold part
      if (match.start > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, match.start)));
      }
      
      // Add the bold text
      spans.add(TextSpan(
        text: match.group(1),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ));
      
      lastIndex = match.end;
    }
    
    // Add remaining text
    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex)));
    }
    
    return spans;
  }
} 