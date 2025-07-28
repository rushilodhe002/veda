import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/benefits_vyayama_widget.dart';

class BenefitsVyayamaScreen extends StatelessWidget {
  const BenefitsVyayamaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const BenefitsVyayamaWidget(),
      ),
    );
  }
} 