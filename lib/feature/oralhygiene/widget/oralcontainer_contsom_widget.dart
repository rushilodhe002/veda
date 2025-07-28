import 'package:donation_management/feature/Dantdhawan/view/dantdhawan_home_screen.dart';
import 'package:donation_management/feature/jivha_nirlekhana/view/jivamain.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/themes/app_text_style.dart';
import 'container_oralhygiene_widget.dart';

class OralHygieneScreen extends StatelessWidget {
  const OralHygieneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
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
                  AppStrings.oralhygienetext,
                  style: AppTextStyle.largeHeader.copyWith(fontSize: 25),
                ),
              ],
            ),
            30.height,
            Row(
              children: [
                InkWell(
                   onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DantdhawanHomeScreen()));
                 },
                  child: OralCustomContainer(
                    child: SvgPicture.asset(AppImages.teethIcon),
                    title: AppStrings.dantaText,
                    subtitle: AppStrings.cleaningText,
                  ),
                ),
                20.width,
                InkWell(
                   onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Jivamain()));
                 },
                  child: OralCustomContainer(
                    title: AppStrings.jivatext,
                    child: SvgPicture.asset(AppImages.jivaIcon),
                  ),
                ),
              ],
            ),
            30.height,
            Row(
              children: [
                InkWell(
                   onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Jivamain()));
                 },
                  child: OralCustomContainer(
                    title: AppStrings.gandushtext,
                    child: SvgPicture.asset(AppImages.gggIcon),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
