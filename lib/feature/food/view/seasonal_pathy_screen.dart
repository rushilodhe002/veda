import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../widgets/seasonal_pathy_widget.dart';

class SeasonalPathyScreen extends StatelessWidget {
  const SeasonalPathyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         bottomNavigationBar: BottomNavBarWidget(),
         backgroundColor: AppColors.foodBgColor,
        body:const SeasonalPathyWidget(),
      ),
    );
  }
}