import 'package:donation_management/feature/Ayurveda_screen/widget/ayurveda_containercustom_widget.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/themes/app_text_style.dart';


class AyurvedaCustomWidget extends StatelessWidget {
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
                InkWell(
                  onTap: () {
                  context.pop(context);
                },
                  child: SvgPicture.asset(
                    AppImages.backArrowIcon,
                    height: 35,
                    width: 35,
                  ),
                ),
                15.width,
                Text(
                  AppStrings.bathayurvedatext,
                  style: AppTextStyle.largeHeader.copyWith(fontSize: 20),
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
              child: const Text("In Ayurveda, bath or Snana is considered a key component of Dinacharya (daily routine) that not only cleanses the body but also purifies the mind and spirit. The process of bathing in Ayurveda goes beyond mere physical cleanliness and is seen as a ritual for maintaining balance in the body’s doshas, improving circulation, and promoting overall well-being. The type of bath, water temperature, and ingredients used can vary depending on the individual's constitution (Prakriti), current state of health, and the season.",
                 style: TextStyle(fontSize: 16, color:AppColors.black),
              ),
            ),
           30.height,
           const AyurvedaContainercustomWidget(title:"Benefits of Bathing (Snana):"),
            8.height,
           const AyurvedaContainercustomWidget(title:"Guidelines for Bathing (Snana):",
            ),
          ],
        ),
      );
    
  }
}
