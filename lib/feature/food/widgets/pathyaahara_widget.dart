import 'package:donation_management/utils/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/navigation/route_manager.dart';
import 'optionbutton_widget.dart';

class PathyaAharaWidget extends StatelessWidget {
   const PathyaAharaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    context.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppImages.backArrow,
                    height: 20,
                  ),
                ),
                SizedBox(width:20,),
                const Text(
                  'Pathya Ahara',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const Text(
                'In Ayurvedic texts, Pathyakar Ahar (beneficial foods) are those that support digestion, balance the doshas, and promote overall health. The concept of Pathya (beneficial foods) is detailed in various classical Ayurvedic texts such as the Charaka Samhita, Sushruta Samhita, and Ashtanga Hridaya. Below are the foods and food groups commonly recognized as Pathyakar Ahar according to Ayurvedic principles, as mentioned in these texts:',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20),
             OptionButton(title: 'Pathyakar Ahar for All Doshas',onPressed: (){
          context.push(AppRouter.pathyaAll);
            },),
             OptionButton(title: 'Pathyakar Ahar According to Doshas',onPressed: (){
          context.push(AppRouter.pathyaAcco);
            },),
             OptionButton(title: 'Seasonal Pathya (Ritucharya-Based)',onPressed: (){
          context.push(AppRouter.seasonalpath);
            },),
             OptionButton(title: 'Benefits of Pathyakar Ahar',onPressed: (){
          context.push(AppRouter.apathya);
            },),
          ],
        ),
      ),
    );
  }
}