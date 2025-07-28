import 'package:donation_management/Features/sharad/widget/sharadContainer.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Sharad extends StatelessWidget {
  const Sharad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenbg,
      body: Column(
        children: [
          Expanded(child: Sharadcontainer()),
        ],
      ),
    );
  }
}