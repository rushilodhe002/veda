import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PrataruthanaContainercustomWidget extends StatelessWidget {
  final String title;

  const PrataruthanaContainercustomWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, color:AppColors.white, fontWeight: FontWeight.bold),
            ),
            const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
