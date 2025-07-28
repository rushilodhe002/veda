import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../widgets/apathya_according_widget .dart';

class ApathyaAccordingScreen extends StatelessWidget {
  const ApathyaAccordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBarWidget(),
         backgroundColor: AppColors.foodBgColor,
        body: const ApathyaAccordingWidget(),
      ),
    );
  }
}