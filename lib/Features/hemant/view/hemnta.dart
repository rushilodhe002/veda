import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../widget/hemantaContainer.dart';

class Hemnta extends StatelessWidget {
  const Hemnta({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:AppColors.screenbg,
      body: Column(
        children: [
          Expanded(child: Hemantacontainer())
        ],
      ),
    );
  }
}

