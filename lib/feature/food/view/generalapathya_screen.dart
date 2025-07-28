import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../widgets/generalapathya_widget.dart';

class GeneralapathyaScreen extends StatelessWidget {
  const GeneralapathyaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         bottomNavigationBar: BottomNavBarWidget(),
         backgroundColor: AppColors.foodBgColor,
        body: const GeneralapathyaWidget(),
      ),
    );
  }
}