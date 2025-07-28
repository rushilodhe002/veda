import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../widget/oralcontainer_contsom_widget.dart';

class Oralhygienescreen extends StatelessWidget {
  const Oralhygienescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       backgroundColor:AppColors.bgColor,
      
      body: 
    Column( children: [
          
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Column(
            children: [
           OralHygieneScreen(),
           
              ],
             ),
          ),
        ],)
    
    );

  }
  
  
  }
