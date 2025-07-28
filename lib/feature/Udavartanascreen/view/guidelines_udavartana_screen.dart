import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/guidelines_udavartana_widget.dart';

class GuidelinesUdavartanaScreen extends StatelessWidget {
  const GuidelinesUdavartanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const GuidelinesUdavartanaWidget(),
      ),
    );
  }
} 