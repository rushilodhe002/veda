import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_strings/app_strings.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import '../widgets/ContainerWidget.dart';
import '../widgets/appbarWidget.dart';

class Whattoeatscreen extends StatelessWidget {
  const Whattoeatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Appbarwidget(),
              10.height,
              const CustomContainerwidget(
                child: Text(
                  AppStrings.ayurvedaemphasizesText,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              20.height,
              const CustomContainerwidget(
                title: AppStrings.foodMustAlingText,
                showDivider: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BulletPoint(
                      text: AppStrings.prakritiText,
                    ),
                    BulletPoint(text: AppStrings.vataFavorText),
                    BulletPoint(text: AppStrings.pittaFavorText),
                    BulletPoint(text: AppStrings.kaphaFavorText),
                    const Divider(thickness: 1, color: Colors.grey),
                    BulletPoint(text: AppStrings.agniText),
                    BulletPoint(text: AppStrings.strongAgniText),
                    BulletPoint(text: AppStrings.weakAgniText),
                    const Divider(thickness: 1, color: Colors.grey),
                    BulletPoint(text: AppStrings.ritucharyaText),
                    BulletPoint(text: AppStrings.vasantaText),
                    BulletPoint(text: AppStrings.grishmaSummerText),
                  ],
                ),
              ),
              10.height,
             const CustomContainerwidget(
                title: AppStrings.shlokaText,
                child: Text(AppStrings.shlokaContentText),
              ),
              20.height,
            ],
          ),
        ),
      ),
    );
  }
}

class Containerwidget {
  const Containerwidget();
}
