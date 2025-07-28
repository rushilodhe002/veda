import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../widget/abhyanga_widget.dart';

class AbhyangaScreen extends StatelessWidget {
  const AbhyangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: const AbhyangaWidget(),
      ),
    );
  }
} 