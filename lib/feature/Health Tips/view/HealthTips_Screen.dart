import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/constants/app_strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/navigation/route_manager.dart';
import '../widgets/ContainerWidget.dart';
import '../widgets/rowWidget.dart';

class HealthtipsScreen extends StatelessWidget {
  const HealthtipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          const Rowwidget(),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (){
              context.push(AppRouter.whattoeat);
              },
            child: CustomWidget(
              text: AppStrings.whatToEatText,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(AppImages.faceIcon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              context.push(AppRouter.idealtime);
              },
            child: CustomWidget(
              text: AppStrings.idealTimeText,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(AppImages.idealTimeIcon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              context.push(AppRouter.dietandwater);
              },
            child: CustomWidget(
              text: AppStrings.dietandWaterText,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(AppImages.noteBookIcon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              context.push(AppRouter.theidealfood);
              },
            child: CustomWidget(
              text: AppStrings.theIdealFoodText,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(AppImages.sunIcon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              context.push(AppRouter.whatnottodo);
              },
            child: CustomWidget(
              text: AppStrings.whatNottoDoText,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(AppImages.whatNotDoIcon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              context.push(AppRouter.featuresofproper);
              },
            child: CustomWidget(
              text: AppStrings.featuresofProperText,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(AppImages.repeatIcon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              context.push(AppRouter.healthydietplan);
              },
            child: CustomWidget(
              text: AppStrings.healthyDietPlansText,
              backgroundColor: AppColors.white,
              child: SvgPicture.asset(AppImages.injectionIcon),
            ),
          ),
        ],
      ),
    );
  }
}
