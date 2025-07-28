import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/bath_snana_widget.dart';

class BathSnanaScreen extends StatelessWidget {
  const BathSnanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const BathSnanaWidget(),
      ),
    );
  }
} 