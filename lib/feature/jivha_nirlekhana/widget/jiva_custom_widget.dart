import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/navigation/route_manager.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/themes/app_text_style.dart';


class JivaCustomWidget extends StatelessWidget {
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
                  "Jivha Nirlekhana",
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
              child: const Text("Jivha Nirlekhana is an essential part of Dinacharya (daily routine) mentioned in Ayurveda, which involves gently scraping the tongue to remove the coating that accumulates overnight. This practice is highly emphasized in classical texts like the Charaka Samhita and Ashtanga Hridaya.",
                 style: TextStyle(fontSize: 16, color:AppColors.black),
              ),
            ),
           30.height,
           InkWell(
             onTap: () {
               context.push(AppRouter.jivhaBenefits);
             },
             child: Container(
               padding: EdgeInsets.all(12),
               decoration: BoxDecoration(
                 color: AppColors.buttonColor,
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                     "Benefits of Jivha Nirlekhana",
                     style: const TextStyle(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.bold),
                   ),
                   const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 16),
                 ],
               ),
             ),
           ),
            8.height,
           InkWell(
             onTap: () {
               context.push(AppRouter.jivhaMaterials);
             },
             child: Container(
               padding: EdgeInsets.all(12),
               decoration: BoxDecoration(
                 color: AppColors.buttonColor,
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                     "Material of Tongue Scrapers",
                     style: const TextStyle(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.bold),
                   ),
                   const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 16),
                 ],
               ),
             ),
           ),
          ],
        ),
      );
    
  }
}
