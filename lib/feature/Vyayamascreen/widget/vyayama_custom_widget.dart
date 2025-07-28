import 'package:donation_management/feature/Dantdhawan/widget/dantdhawan_containercustom_widget.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/themes/app_text_style.dart';
import '../../../utils/navigation/route_manager.dart';
import 'package:go_router/go_router.dart';


class VyayamaCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
     
       
       Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                SvgPicture.asset(
                  AppImages.backArrowIcon,
                  height: 35,
                  width: 35,
                ),
                15.width,
                Text(
                  AppStrings.Vyayamatext,
                  style: AppTextStyle.largeHeader.copyWith(fontSize: 25),
                ),
              ],
            ),
            30.height,
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color:AppColors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  
                ],
              ),
              child: const Text("Vyayama, or physical exercise, is an essential aspect of Dinacharya (daily routine) in Ayurveda. It involves engaging the body in physical activities to maintain health, vitality, and doshic balance. Ayurveda emphasizes the importance of moderation and tailoring exercise to individual capacity, seasonal variations, and dosha predominance. For those who prefer lighter physical activity, Yoga Asanas can serve as an excellent alternative.",
                 style: TextStyle(fontSize: 16, color:AppColors.black),
              ),
            ),
           30.height,
           InkWell(
            onTap: () {
              context.push(AppRouter.benefitsVyayama);
            },
            child: const DantdhawanContainercustomWidget(title:"Benefits of Vyayama (Exercise"),
          ),
            8.height,
           InkWell(
             onTap: () {
               context.push(AppRouter.guidelinesVyayama);
             },
             child: const DantdhawanContainercustomWidget(title:"Guidelines for Vyayama \n (As per Ayurveda)"),
           ),
          ],
        ),
      );
    
  }
}
