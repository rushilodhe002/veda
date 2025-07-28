import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../widget/methodmain.dart';

class MethodHome extends StatelessWidget {
  const MethodHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [Expanded(child: Methodmain())],
      ),
    );
  }
}
