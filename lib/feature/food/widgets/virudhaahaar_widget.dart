import 'package:donation_management/utils/navigation/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';
import 'optionbutton_widget.dart';

class VirudhaahaarWidget extends StatelessWidget {
  const VirudhaahaarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  context.pop(context);
                },
                child: SvgPicture.asset(
                  AppImages.backArrow,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Virudha Ahaar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: const Text(
              "In Ayurveda,  Virudha Ahaar refers to the combination of foods that are incompatible with each other. Consuming such foods together can lead to digestive disturbances, toxin buildup (ama), and imbalances in your body. The combination of these foods can disrupt digestion and cause health issues like bloating, indigestion, and other digestive disorders.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 20),
          OptionButton(
            title: 'Common Examples of Virudha Ahaar',
            onPressed: () {
              context.push(AppRouter.commonvirudha);
            },
          ),
          const OptionButton(title: 'Why Should  Avoid Virudha Ahaar?'),
          const OptionButton(title: 'Tips to Avoid Virudha Ahaar'),
        ],
      ),
    );
  }
}
