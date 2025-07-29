import 'package:donation_management/Features/vasant/widget/vasantContainer.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Vasant extends StatelessWidget {
  const Vasant({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          children: [
            Expanded(child: VasantContainer()),
          ],
        ),
      ),
    );
  }
} 