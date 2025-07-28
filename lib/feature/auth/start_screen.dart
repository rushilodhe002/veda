import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/navigation/route_manager.dart';
import 'package:donation_management/utils/themes/app_text_style.dart';
import 'package:donation_management/utils/widgets/buttons/primary_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Center(
                child: Column(
                  children: [
                    Image.asset(AppImages.appLogo),
                    Text(
                      "Veda Health",
                      style: AppTextStyle.veryLargeHeader.copyWith(color: const Color.fromARGB(255, 11, 73, 124)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: PrimaryElevatedButton(
                  label: "Get Started",
                  borderRadius: 6,
                  buttonColor: AppColors.greenColor,
                  height: 45,
                  onPressed: () {
                    context.push(AppRouter.home);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
