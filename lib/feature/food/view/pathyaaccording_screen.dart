import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../widgets/pathya_according_widget.dart';

class PathyaaccordingScreen extends StatelessWidget {
  const PathyaaccordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         bottomNavigationBar: BottomNavBarWidget(),
         backgroundColor: AppColors.foodBgColor,
        body:const PathyaAccordingWidget(),
      ),
    );
  }
}