import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/benefits_abhyanga_widget.dart';

class BenefitsAbhyangaScreen extends StatelessWidget {
  const BenefitsAbhyangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const BenefitsAbhyangaWidget(),
      ),
    );
  }
} 