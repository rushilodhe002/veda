import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../widgets/common_virudha_widget.dart';

class CommonVirudhaScreen extends StatelessWidget {
  const CommonVirudhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBarWidget(),
        backgroundColor: AppColors.foodBgColor,
        body: const CommonVirudhaWidget(),
      ),
    );
  }
}