import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../widgets/virudhaahaar_widget.dart';


class VirudhaahaarScreen extends StatelessWidget {
  const VirudhaahaarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
         bottomNavigationBar: BottomNavBarWidget(),
         backgroundColor: AppColors.foodBgColor,
        body: const VirudhaahaarWidget(),
      ),
    );
  }
}