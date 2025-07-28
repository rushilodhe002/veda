import 'package:donation_management/feature/Home/widgets/appNavBar.dart';
import 'package:donation_management/feature/Home/widgets/body.dart';
import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/navigation/bottom_navbar_widget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        bottomNavigationBar: BottomNavBarWidget(),
        backgroundColor: AppColors.customBackgroundColor,
        body: const Column(
          children: [
            Appnavbar(),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Body(),
            )),
          ],
        ),
      ),
    );
  }
}
