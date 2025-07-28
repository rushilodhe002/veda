import 'package:donation_management/Features/grisma/widget/grismaContainer.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Grisma extends StatelessWidget {
  const Grisma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenbg,
      body: Column(
      children: [
        Expanded(child: Grismacontainer()),
      ],
    ),);
  }
}