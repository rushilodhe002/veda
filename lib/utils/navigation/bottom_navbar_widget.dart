import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/navigation/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../constants/app_colors.dart';

class BottomNavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              InkWell(
                  onTap: () {
                    context.push(AppRouter.home);
                  },
                  child: _buildNavItem(
                      SvgPicture.asset(AppImages.homeIcon), "Home")),
              const SizedBox(),
              const SizedBox(),
              const SizedBox(),
              InkWell(
                onTap: () {
                    context.push(AppRouter.chatbot);
                  },
                child: _buildNavItem(SvgPicture.asset(AppImages.chatIcon), "Ai Chat")),
              const SizedBox(),
            ],
          ),
        ),
        Positioned(
          top: -30,
          child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.greenColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.greenColor,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: FloatingActionButton(
              onPressed: () {
                context.push(AppRouter.personalizedDincharya);
              },
              shape: const CircleBorder(),
              backgroundColor: AppColors.greenColor,
              elevation: 0,
              child:SizedBox( 
                height: 30,
                width: 30,
                child: SvgPicture.asset(AppImages.todoAddIcon)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNavItem(Widget icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 30, width: 30, child: icon),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: AppColors.greenColor)),
      ],
    );
  }
}
