import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/constants/app_strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/shishiraContainer.dart';

class Rutucharya extends StatelessWidget {
  const Rutucharya({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.screenbg,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 10,),
                  _backArrowWidget(),
                  const SizedBox(width: 20), 
                  _rutucharyaText(),
                ],
              ),
              const SizedBox(height: 20), 
             ShishiraContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _backArrowWidget() {
    return SvgPicture.asset(AppImages.backArrow);
  }

  Widget _rutucharyaText() {
    return Text(
      AppStrings.rutucharya,
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
    );
  }
}


