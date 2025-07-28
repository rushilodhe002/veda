import 'package:donation_management/utils/constants/app_colors.dart';
import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/constants/app_strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShashiraContainer extends StatelessWidget {
  const ShashiraContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _backArrow(),
                  const SizedBox(width: 10),
                  _headText(),
                ],
              ),
              const SizedBox(height: 16),
              _textContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _backArrow() {
    return SvgPicture.asset(AppImages.backArrowIcon);
  }

  Widget _headText() {
    return const Text(
      AppStrings.shishiraCapitalText,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
    );
  }

  Widget _textContainer() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            "In Ayurveda, Shishira Ritu is one of the six seasons (Ritus) and corresponds to the late winter months (typically January to March). "
            "This season marks the transition from Hemanta Ritu (early winter) and is characterized by an increase in coldness and dryness. "
            "Ayurvedic texts such as Charaka Samhita and Ashtanga Hridaya provide specific guidelines for lifestyle and diet during this season to maintain balance and health.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 15),
      Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child:  RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text: 'Characteristics of Hemanta Ritu\n\n',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
      ),
      WidgetSpan(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '• ',
              style: TextStyle(color: Colors.black),
            ),
            Expanded(
              child: Text(
                'Dominant Dosha: Vata and Kapha are predominant during this season, with Vata often increasing due to the cold and dry conditions, and Kapha being aggravated due to the lingering effects of the rainy season.\n\n',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      WidgetSpan(   
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '• ',
              style: TextStyle(color: Colors.black),
            ),
            Expanded(
              child: Text(
                'Weather: Agni (Digestive Fire): During Hemanta, the digestive fire (Agni) becomes strong, and it is a good time to focus on nourishing and strengthening the body with warming foods.',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
)
        ),
SizedBox(height: 10,),
       Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: AppColors.white,
  ),
  child: Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• '),
            Expanded(child: Text('In Shishira Ritu, Ayurveda recommends:')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text('Madhura (Sweet): Provides nourishment and enhances strength (milk, ghee, jaggery).')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text("Amla (Sour): Aids digestion and provides warmth (lemon, tamarind, curd).")),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text('Lavana (Salty): Helps retain warmth and prevent dryness (rock salt, pickles).')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text('Importance of Makarsankranti in Ayurveda', style: TextStyle(fontWeight: FontWeight.w700))),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text("Til and Jaggery: Generate warmth, improve digestion, and boost nourishment.")),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text("Seasonal Foods: Til laddoos, puran poli, and khichdi help maintain warmth and immunity.")),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text("Adaptation: Supports digestion and strengthens immunity in cold Shishira Ritu.")),
          ],
        ),
      ],
    ),
  ),
),
SizedBox(height: 10,),
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: AppColors.white,
  ),
  child: Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Lifestyle Guidelines (Vihara)",style: TextStyle(fontWeight: FontWeight.w700),),
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ',style: TextStyle(color: AppColors.redColorDark,)),
            Expanded(child: Text('Stay Warm:',style: TextStyle(fontWeight: FontWeight.w700),)),
          ],
        ),
       
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text('Wear warm clothes and avoid exposure to cold winds')),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Keep your living space warm and cozy")),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text('Daily Oil Massage (Abhyanga):',style: TextStyle(fontWeight: FontWeight.w700),)),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text('Massage your body with warm sesame oil to counteract dryness and improve circulation.')),
          ],
        ),
       
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("This practice also helps in balancing Vata and maintaining healthy skin")),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text("Exercise Regularly (Vyayama):",style: TextStyle(fontWeight: FontWeight.w700),)),
          ],
        ),
       
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Moderate exercise is beneficial to improve circulation and enhance body heat.")),
          ],
        ),
         Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Activities like walking, yoga, or light gym routines are recommended")),
          ],
        ),
         SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text("Sunbathing (Surya Snana):",style: TextStyle(fontWeight: FontWeight.w700),)),
          ],
        ),
       
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Expose yourself to sunlight during the morning hours to absorb natural warmth and maintain energy levels")),
          ],
        ),
         SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text("Adequate Sleep::",style: TextStyle(fontWeight: FontWeight.w700),)),
          ],
        ),
       
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Ensure you get enough rest and avoid late nights, as the body needs extra energy to combat the cold.")),
          ],
        ),
      ],
    ),
  ),
),

SizedBox(height: 10,),
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: AppColors.white,
  ),
  child: Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Do's and Don'ts in Shishira Ritu",style: TextStyle(fontWeight: FontWeight.w700),),
        SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ',style: TextStyle(color: AppColors.redColorDark,)),
            Expanded(child: Text("Do's:',style: TextStyle(fontWeight: FontWeight.w700"),),
          ],
        ),
       
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Eat freshly cooked, warm meals.")),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Use warm water for bathing and drinking.")),
          ],
        ),
         Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Apply herbal oils or moisturizers to prevent skin dryness.")),
          ],
        ),
         Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Consume soups made with lentils, seasonal vegetables, and herbs.")),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.redColorDark)),
            Expanded(child: Text("Don'ts:",style: TextStyle(fontWeight: FontWeight.w700),)),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Avoid cold drinks, refrigerated food, and dry snacks.")),
          ],
        ),
       
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Do not skip Abhyanga (oil massage) or exercise, as they are essential to maintain warmth and vitality.")),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('• ', style: TextStyle(color: AppColors.black)),
            Expanded(child: Text("Avoid prolonged exposure to cold and damp conditions.")),
          ],
        ),
      
      ],
    ),
  ),
),
      ],
    );
  }
}
