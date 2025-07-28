import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/guidelines_vyayama_widget.dart';

class GuidelinesVyayamaScreen extends StatelessWidget {
  const GuidelinesVyayamaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const GuidelinesVyayamaWidget(),
      ),
    );
  }
} 