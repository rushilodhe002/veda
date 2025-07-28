import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../widgets/benefits_apthya_widget.dart';

class BenefitsApthyaScreen extends StatelessWidget {
  const BenefitsApthyaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBarWidget(),
         backgroundColor: AppColors.foodBgColor,
        body:const BenefitsApthyaWidget(),
      ),
    );
  }
}