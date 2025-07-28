import 'package:flutter/material.dart';
import 'package:donation_management/utils/constants/app_colors.dart';

class CustomWidget extends StatelessWidget {
  final String text;
  final Widget child;
  final Color? backgroundColor;

  const CustomWidget({
    super.key,
    required this.text,
    this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.inputBorderColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      constraints: const BoxConstraints(minWidth: 100, maxWidth: 340),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(3),
            child: child,
          ),
        ],
      ),
    );
  }
}
