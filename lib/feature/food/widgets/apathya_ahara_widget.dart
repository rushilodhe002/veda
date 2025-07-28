import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/navigation/route_manager.dart';
import 'optionbutton_widget.dart';

class ApathyaAharaWidget extends StatelessWidget {
  const ApathyaAharaWidget({super.key});

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
              const SizedBox(width:20,),
              const Text(
                'Apathya Ahara',
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
              "In Ayurveda,  Apathya Ahar refers to foods that disrupt the balance of your body's energies(doshas) and can lead to health issues. These foods may impair digestion, cause toxins (ama) tobuild up in the body, or worsen specific dosha imbalances. Here’s a guide to help you avoidcertain foods based on your dosha and the season.:",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 20),
           OptionButton(title: 'General Apathya Ahar',onPressed: (){
        context.push(AppRouter.genralapatya);
          },),
           OptionButton(title: 'Apathya Ahar According to Doshas',onPressed: (){
        context.push(AppRouter.apathyaacco);
          },),
           OptionButton(title: 'Seasonal Apathya',onPressed: (){
        context.push(AppRouter.seasonalapathya);
          },),
           OptionButton(title: 'Benefits of Avoiding Apathya Aharm',onPressed: (){
        context.push(AppRouter.benefitsapthya);
          },),
        ],
      ),
    );
  }
}