import 'package:donation_management/utils/navigation/bottom_navbar_widget.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../widgets/apathya_widget.dart';

class ApathyaScreen extends StatelessWidget {
  const ApathyaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBarWidget(),
         backgroundColor: AppColors.foodBgColor,
        body: const ApathyaWidget(),
      ),
    );
  }
}