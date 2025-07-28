import 'package:donation_management/feature/Dantdhawan/widget/dantdhawan_containercustom_widget.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/themes/app_text_style.dart';


class UdavartanaCustomWidget extends StatelessWidget {
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
                  AppStrings.udavartanatext,
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
              child: const Text("Udavartana is a unique Ayurvedic massage technique that involves the application of herbal powders on the body, typically in an upward motion. This treatment is a more intensive form of massage compared to Abhyanga, with the primary aim of stimulating the lymphatic system, improving circulation, and promoting detoxification. Udavartana is often used to address Kapha-related issues like obesity, lethargy, and fluid retention.",
                 style: TextStyle(fontSize: 16, color:AppColors.black),
              ),
            ),
           30.height,
           const DantdhawanContainercustomWidget(title: "Benefits of Udavartana"),
            8.height,
           const DantdhawanContainercustomWidget(title:"Guidelines for Udavartana",
            ),
          ],
        ),
      );
    
  }
}
