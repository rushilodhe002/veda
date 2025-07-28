import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';

import '../widget/benefits_wakeup_early_widget.dart';

class BenefitsWakeupEarlyScreen extends StatelessWidget {
  const BenefitsWakeupEarlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const BenefitsWakeupEarlyWidget(),
      ),
    );
  }
} 