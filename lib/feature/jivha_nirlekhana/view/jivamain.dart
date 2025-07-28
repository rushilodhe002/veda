import 'package:donation_management/feature/jivha_nirlekhana/widget/jiva_custom_widget.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';


class Jivamain extends StatelessWidget {
  const Jivamain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.bgColor,
      body: Column(children: [
        JivaCustomWidget()
      ],),
    );
  }
}