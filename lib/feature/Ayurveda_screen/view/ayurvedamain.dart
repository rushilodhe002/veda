import 'package:donation_management/feature/Ayurveda_screen/widget/ayurveda_custom_widget.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';


class Ayurvedamain extends StatelessWidget {
  const Ayurvedamain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.bgColor,
      body: Column(children: [
        AyurvedaCustomWidget()
      ],),
    );
  }
}