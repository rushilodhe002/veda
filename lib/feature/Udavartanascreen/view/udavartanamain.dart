import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../widget/udavartana _custom_widget.dart';


class Udavartanamain extends StatelessWidget {
  const Udavartanamain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.bgColor,
      body: Column(children: [
        UdavartanaCustomWidget()
      ],),
    );
  }
}