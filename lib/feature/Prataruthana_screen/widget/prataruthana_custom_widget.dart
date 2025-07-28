import 'package:donation_management/feature/Dantdhawan/widget/dantdhawan_containercustom_widget.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:donation_management/utils/widgets/buttons/primary_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/navigation/route_manager.dart';
import '../../../utils/themes/app_text_style.dart';


class PrataruthanaCustomWidget extends StatelessWidget {
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
                  AppStrings.prataruthanatext,
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
              child: const Text("In Ayurveda, waking up during the Brahma Muhurta (literally the time of Brahma or the divine time) is considered highly beneficial for physical, mental, and spiritual well-being. The Brahma Muhurta is the period roughly 1.5 hours before sunrise, which is believed to be the most auspicious and ideal time to begin the day",
                 style: TextStyle(fontSize: 16, color:AppColors.black),
              ),
            ),
           30.height,
           InkWell(
            onTap: (){
              context.push(AppRouter.apathya);
              },
            child: const DantdhawanContainercustomWidget(title: AppStrings.wakeupearlytext)),
            8.height,
          InkWell (onTap: (){
              context.push(AppRouter.prataruthana);
              },
             child: const DantdhawanContainercustomWidget(title: AppStrings.wakeuptext,
              ),
           ),
          ],
        ),
      );
    
  }
}
