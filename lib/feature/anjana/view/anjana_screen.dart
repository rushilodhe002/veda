import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/themes/app_text_style.dart';
import '../../../utils/constants/app_images.dart';
import '../../../utils/extension/sized_box_extension.dart';
import '../../../utils/navigation/route_manager.dart';
import 'package:go_router/go_router.dart';

class AnjanaScreen extends StatelessWidget {
  const AnjanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
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
                  'Anjana (Eye Care)',
                  style: AppTextStyle.largeHeader.copyWith(
                    fontSize: 20,
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
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: const Text(
                      'In Ayurveda, Anjana refers to the practice of applying a medicated paste or herbal substance to the eyes to enhance vision and treat eye-related disorders. This process is similar to the application of Sauviranjana and Rasanjana, traditional Ayurvedic preparations used for eye care. Both Sauviranjana and Rasanjana aim to soothe, cleanse, and protect the eyes, while enhancing overall eye health and preventing ailments.',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                  30.height,
                  // Method of Application Button
                  InkWell(
                    onTap: () {
                      context.push(AppRouter.anjanaMethod);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Anjana - Method of Application:',
                            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  15.height,
                  // Rules Button
                  InkWell(
                    onTap: () {
                      context.push(AppRouter.anjanaRules);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Rules for Using Sauviranjana and \n Rasanjana:',
                            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
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