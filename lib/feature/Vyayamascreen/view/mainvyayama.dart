import 'package:donation_management/feature/Vyayamascreen/widget/vyayama_custom_widget.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';


class Mainvyayama extends StatelessWidget {
  const Mainvyayama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.bgColor,
      body: Column(children: [
        VyayamaCustomWidget()
      ],),
    );
  }
}