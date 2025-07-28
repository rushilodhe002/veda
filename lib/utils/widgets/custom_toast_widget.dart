
import 'package:flutter/material.dart';
import '../themes/app_text_style.dart';

class CustomToastWidget extends StatelessWidget {
  final String? leadingIcon;
  final String title;
  final String message;
  final Color backgroundColor;
  final Color textColor;
  final String? trailingIcon;
  final Color bubbleColor;

  const CustomToastWidget({
    super.key,
    this.leadingIcon,
    required this.title,
    required this.message,
    required this.backgroundColor,
    required this.textColor,
    this.trailingIcon,
    required this.bubbleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (leadingIcon != null)
               const Icon(Icons.notification_add),
                  // SvgPicture.asset(
                  //   leadingIcon ?? AppImages.successToastLeadIcon,
                  //   height: 40,
                  //   width: 40,
                  // ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyle.largeHeader.copyWith(
                            color: textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        message,
                        style: AppTextStyle.mediumHeader.copyWith(
                            color: textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
               const Icon(Icons.cancel)
                // SvgPicture.asset(
                //   trailingIcon ?? AppImages.unionCancleIcon,
                //   height: 19,
                //   width: 19,
                // ),
              ],
            ),
          ),
         const Positioned(
            bottom: 0,
            right: 0,
            child: Icon(Icons.bubble_chart)
            // SvgPicture.asset(
            //   AppImages.greenBubbleIcon,
            //   height: 50,
            //   width: 50,
            //   // ignore: deprecated_member_use
            //   color: bubbleColor,
            // ),
          ),
        ],
      ),
    );
  }
}
