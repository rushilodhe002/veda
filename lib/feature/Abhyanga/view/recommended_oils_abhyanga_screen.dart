import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/recommended_oils_abhyanga_widget.dart';

class RecommendedOilsAbhyangaScreen extends StatelessWidget {
  const RecommendedOilsAbhyangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const RecommendedOilsAbhyangaWidget(),
      ),
    );
  }
} 