import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'checkbox_controller.dart';

class CheckboxWidget extends StatelessWidget {
  final bool initialValue;
  final Color? activeColor;
  final Color? checkColor;
  final BorderSide? borderSide;
  final double scale;
  final BorderRadius? borderRadius;
  final AlignmentGeometry? alignment;

  const CheckboxWidget({
    super.key,
    this.initialValue = false,
    this.activeColor,
    this.checkColor,
    this.borderSide,
    this.scale = 1.3,
    this.borderRadius,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>CheckboxController());
    return GetBuilder<CheckboxController>(
      builder: (controller) {
        return Transform.scale(
          alignment: alignment ?? const Alignment(0, 0),
          scale: scale,
          child: InkWell(
            onTap: () {
              final newValue = !controller.isChecked;
              controller.toggle(newValue);
            },
            child: Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: borderRadius ?? BorderRadius.circular(4),
                  ),
                  side: borderSide ??
                      const BorderSide(color: Colors.grey, width: 1),
                  value: controller.isChecked,
                  onChanged: (bool? newValue) {
                    if (newValue != null) {
                      controller.toggle(newValue);
                    }
                  },
                  activeColor: activeColor ?? Colors.blue,
                  checkColor: checkColor ?? Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
