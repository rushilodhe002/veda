import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/how_to_wakeup_early_widget.dart';

class HowToWakeupEarlyScreen extends StatelessWidget {
  const HowToWakeupEarlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const HowToWakeupEarlyWidget(),
      ),
    );
  }
} 