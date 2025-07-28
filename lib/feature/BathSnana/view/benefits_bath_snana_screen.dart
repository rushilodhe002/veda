import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/benefits_bath_snana_widget.dart';

class BenefitsBathSnanaScreen extends StatelessWidget {
  const BenefitsBathSnanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const BenefitsBathSnanaWidget(),
      ),
    );
  }
} 