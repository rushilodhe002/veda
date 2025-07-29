import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../widgets/pathyaahara_widget.dart';

class PathyaaharaScreen extends StatelessWidget {
  const PathyaaharaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBarWidget(),
        backgroundColor: AppColors.foodBgColor,
        body: const Center(
          child: PathyaAharaWidget(),
        ),
      ),
    );
  }
}