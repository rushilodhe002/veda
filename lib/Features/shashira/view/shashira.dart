import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../widget/shashiraContainer.dart';

class Shashira extends StatelessWidget {
  const Shashira({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          children: [
            const ShashiraContainer() // Fixed class name to PascalCase
          ],
        ),
      ),
    );
  }
}
