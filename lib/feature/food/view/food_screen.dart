import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/constants/app_strings/app_strings.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:donation_management/utils/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';
import '../../../utils/navigation/route_manager.dart';
import '../widgets/contain_widget.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBarWidget(),
        backgroundColor: AppColors.customBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                  context.pop(context);
                },
                    child: SvgPicture.asset(
                      AppImages.backArrowIcon,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  20.width,
                  Text(
                    AppStrings.foodtext,
                    style: AppTextStyle.largeHeader.copyWith(fontSize: 20),
                  ),
                ],
              ),
              Divider(),
              5.height,
              InkWell(
                onTap: () {
                  context.push(AppRouter.pathyaAharaW);
                },
                child: ContainWidget(
                  data: AppStrings.pathyaText,
                  widget: SvgPicture.asset(
                    AppImages.fruitIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.push(AppRouter.apathyaaharaScreen);
                },
                child: ContainWidget(
                  data: AppStrings.apatyaText,
                  widget: SvgPicture.asset(
                    AppImages.juesIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.push(AppRouter.virudhaahaaar);
                },
                child: ContainWidget(
                  data: AppStrings.virudhaText,
                  widget: SvgPicture.asset(
                    AppImages.foodBucketIcon,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
