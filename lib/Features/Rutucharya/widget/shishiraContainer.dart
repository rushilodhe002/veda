import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/constants/app_strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/navigation/route_manager.dart';

class SeasonContainer extends StatelessWidget {
  final String text;
  final String icon;

  const SeasonContainer({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SvgPicture.asset(icon),
          ],
        ),
      ),
    );
  }
}

class ShishiraContainer extends StatelessWidget {
  const ShishiraContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
           onTap: (){
              context.push(AppRouter.shashira);
              },
          child: SeasonContainer(text: AppStrings.shishiraText, icon: AppImages.saradIcon)),
        const SizedBox(height: 10),
        InkWell(
           onTap: (){
              context.push(AppRouter.varsha);
              },
          child: SeasonContainer(text: AppStrings.varshaText, icon: AppImages.varshaIcon)),
        const SizedBox(height: 10),
        InkWell(
           onTap: (){
              context.push(AppRouter.grisma);
              },
          child: SeasonContainer(text: AppStrings.grishmaText, icon: AppImages.grismaIcon)),
        const SizedBox(height: 10),
        InkWell(
           onTap: (){
              context.push(AppRouter.vasant);
              },
          child: SeasonContainer(text: AppStrings.vasantText, icon: AppImages.vasantIcon)),
        const SizedBox(height: 10),
        InkWell(
           onTap: (){
              context.push(AppRouter.sharad);
              },
          child: SeasonContainer(text: AppStrings.sharadText, icon: AppImages.saradIcon)),
        const SizedBox(height: 10),
        InkWell(
           onTap: (){
              context.push(AppRouter.hemanta);
              },
          child: SeasonContainer(text: AppStrings.hemantText, icon: AppImages.hemantIcon)),
      ],
    );
  }
}
