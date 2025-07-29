import 'package:donation_management/feature/Prataruthana_screen/view/mainprataruthana.dart';
import 'package:donation_management/feature/Udavartanascreen/view/udavartanamain.dart';
import 'package:donation_management/feature/Vyayamascreen/view/mainvyayama.dart';
import 'package:donation_management/feature/oralhygiene/view/oralhygienescreen.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/navigation/route_manager.dart';
import '../../../utils/constants/app_strings/app_strings.dart';
import '../../../utils/themes/app_text_style.dart';
import 'container_contsom_widget.dart';

class DincharyaScreen extends StatelessWidget {
  const DincharyaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                    AppStrings.dincharyatext,
                    style: AppTextStyle.largeHeader.copyWith(fontSize: 20),
                  ),
                ],
              ),
              30.height,
              Row(
                children: [
                
               InkWell(
                 onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainprataruthana()));
                 },
                 child:   CustomContainer(
                      title: AppStrings.prataruthanatext,
                      subtitle: AppStrings.wakeuptext,
                      child: SvgPicture.asset(AppImages.alarmIcon)),),
                  25.width,
                  InkWell(
                     onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Oralhygienescreen()));
                 },
                    child: CustomContainer(
                        child: SvgPicture.asset(AppImages.hygieneoralIcon),
                        title: AppStrings.oraltext),
                  ),
                ],
              ),
              15.height,
              Row(
                children: [
                  InkWell(
                      onTap: (){
                        context.push(AppRouter.abhyanga);
                      },
                      child: CustomContainer(
                        child: SvgPicture.asset(AppImages.oilmassageIcon),
                        title: AppStrings.abhayangatext,
                        subtitle: AppStrings.oilmassagetext),
                  ),
                  25.width,
                  InkWell(
                      onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Mainvyayama()));
                 },
                    child: CustomContainer(
                        child: SvgPicture.asset(AppImages.exerciseIcon),
                        title: AppStrings.vyayamtext,
                        subtitle: AppStrings.exercidetext),
                  ),
                ],
              ),
              15.height,
              Row(
                children: [
                  InkWell(
                      onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Udavartanamain()));
                 },
                    child: CustomContainer(
                        child: SvgPicture.asset(AppImages.powdermassage),
                        title: AppStrings.udavartantext,
                        subtitle: AppStrings.powdermassage),
                  ),
                  25.width,
                  InkWell(
                         onTap: (){
                           context.push(AppRouter.bathSnana);
                 },
                    child: CustomContainer(
                      child: SvgPicture.asset(AppImages.bathIcon),
                      title: AppStrings.sanatext,
                      subtitle: AppStrings.bathtext,
                    ),
                  ),
                ],
              ),
              15.height,
              Row(
                children: [
                  InkWell(     onTap: (){
                  context.push('/anjana');
                 },

                    child: CustomContainer(
                        child: SvgPicture.asset(AppImages.eyeoutlinIcon),
                        title: AppStrings.anjanatext,
                        subtitle: AppStrings.collyrium, ),
                  ),
                  25.width,
                  InkWell(
                         onTap: (){
                  context.push(AppRouter.pratimarsha);
                 },
                    child: CustomContainer(
                      child: SvgPicture.asset(AppImages.bloodIcon),
                      title: AppStrings.pratimarshatext,
                      subtitle: AppStrings.nasystext,
                    ),
                  ),
                ],
              ),
              20.height,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(AppStrings.dantabuttontext,
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(width: 15),
                      SvgPicture.asset(
                        AppImages.forrwordicon,
                        height: 19,
                        width: 19,
                      ),
                    ],
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
