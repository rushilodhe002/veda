import 'package:donation_management/Features/varsha/widget/varshaContainer.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Varsha extends StatelessWidget {
  const Varsha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenbg,
      body: Column(
        children: [
          Expanded(child: VarshaContainer()),
        ],
      ),
    );
  }
} 