import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../widget/prataruthana_custom_widget.dart';

class Mainprataruthana extends StatelessWidget {
  const Mainprataruthana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.bgColor,
      body: Column(children: [
        PrataruthanaCustomWidget()
      ],),
    );
  }
}