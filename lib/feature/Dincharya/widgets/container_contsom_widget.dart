import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
 
class CustomContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final String? subtitle;
  final int? height;
  final int? width;
  final VoidCallback? onTap;
  const CustomContainer(
      {super.key,
      required this.child,
      required this.title,
      this.subtitle,
      this.height,
      this.width,
      this.onTap});
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 115,
        width: 145,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            const BoxShadow(
              color:AppColors.black,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: child,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color:AppColors.black),
              ),
          ],
        ),
      ),
    );
  }
}
 
 