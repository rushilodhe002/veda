import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/benefits_udavartana_widget.dart';

class BenefitsUdavartanaScreen extends StatelessWidget {
  const BenefitsUdavartanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const BenefitsUdavartanaWidget(),
      ),
    );
  }
} 