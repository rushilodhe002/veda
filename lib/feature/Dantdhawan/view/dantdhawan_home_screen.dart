import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../widget/dantdhawan_custom_widget.dart';

class DantdhawanHomeScreen extends StatelessWidget {
  const DantdhawanHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.bgColor,
      body: Column(children: [
        DantdhawanCustomWidget()
      ],),
    );
  }
}