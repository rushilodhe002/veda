import 'package:donation_management/utils/navigation/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/constants/app_images.dart';
import '../../../utils/constants/app_strings/app_strings.dart';

class Appbarwidget extends StatelessWidget {
  const Appbarwidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (){
              context.pop(context);
              },
          child: SvgPicture.asset(
            AppImages.leftArow,
            height: 48,
          ),
        ),
        const SizedBox(width: 20),
        const Text(
          AppStrings.healthTipsText,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
