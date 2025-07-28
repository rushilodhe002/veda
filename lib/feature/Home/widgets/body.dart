import 'package:donation_management/feature/Home/widgets/container.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/constants/app_strings/app_strings.dart';
import 'package:donation_management/utils/themes/app_text_style.dart';
import 'package:donation_management/utils/widgets/text_form_fields/custom_phone_input_widget.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/navigation/route_manager.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 55,
        ),
        const Row(
          children: [
            Text(
              AppStrings.helloTakleText,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Row(
          children: [
            Text(
              AppStrings.welcomeText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldCustomWidget(
          keyboardType: TextInputType.text,
          hintText: AppStrings.searchText,
          hintStyle: const TextStyle(color: AppColors.inputBorderColor),
          fillColor: AppColors.transparent,
          width: 340,
          borderColor: AppColors.inputBorderColor,
          borderRadius: 28,
          height: 51,
          suffix: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              AppImages.searchIcon,
              height: 24,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
              context.push(AppRouter.dincharya);
              },
              child: CustomCardWidget(
                // ignore: sort_child_properties_last
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppImages.dincharyaIcon),
                      ),
                      Text(
                        AppStrings.dincharyaText,
                        style: AppTextStyle.largeNormalText,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
              context.push(AppRouter.rutucharya);
              },
              child: CustomCardWidget(
                // ignore: sort_child_properties_last
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(AppImages.rutucharyaIcon),
                      ),
                      Text(
                        AppStrings.rutucharyaText,
                        style: AppTextStyle.largeNormalText,
                      )
                    ],
                  ),
                ),
                backgroundColor: AppColors.lightGreyColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
              context.push(AppRouter.food);
              },
              child: CustomCardWidget(
                // ignore: sort_child_properties_last
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppImages.foodBucketIcon,height: 50,),
                      ),
                      Text(
                        AppStrings.foodText,
                        style: AppTextStyle.largeNormalText,
                      )
                    ],
                  ),
                ),
                backgroundColor: AppColors.lightGreyColor,
              ),
            ),
            InkWell(
              onTap: (){
              context.push(AppRouter.healthTips);
              },
              child: CustomCardWidget(
                // ignore: sort_child_properties_last
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppImages.helthTipsIcon),
                      ),
                      Text(
                        AppStrings.healthTipsText,
                        style: AppTextStyle.largeNormalText,
                      )
                    ],
                  ),
                ),
                backgroundColor: AppColors.lightGreyColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
