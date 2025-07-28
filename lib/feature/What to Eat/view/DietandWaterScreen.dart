import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Dietandwaterscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F5E9),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
              context.pop(context);
              },
                  child: SvgPicture.asset(
                    AppImages.backArrow,
                    height: 20,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Diet and Water Correlation',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Text(
                      'Diet and water are closely linked: water aids digestion, nutrient absorption, and metabolism, while a healthy diet supports hydration. Proper hydration enhances diet effectiveness, and dehydration can disrupt these processes.',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildSectionTitle('Details'),
                        const SizedBox(height: 8.0),
                        buildItemText(
                            'Water plays a critical role in digestion:'),
                        buildItemText(
                            '•Before Meals: Drinking water suppresses appetite, suitable for weight loss but not for those with weak digestion.'),
                        buildItemText(
                            '• During Meals: Sipping warm water aids digestion by supporting Agni. Avoid cold water as it weakens the digestive process.'),
                        buildItemText(
                            '• Evening (Vata Time): Drinking too much         water immediately after eating leads to Kaphaa  accumulation and sluggish digestion'),
                        const Divider(),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  20.height,
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6.0,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildSectionTitle('Note :'),
                        const SizedBox(height: 8.0),
                        buildItemText(
                            'Drinking boiled or herbal-infused water (Ushnodaka) enhances digestion and metabolism.'),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget buildSubSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget buildItemText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 4.0),
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: '• ',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: Colors.red,
              ),
            ),
            if (text.contains('Fennel –')) ...[
              const TextSpan(
                text: 'Fennel – ',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              TextSpan(
                text: text.replaceFirst('Fennel – ', ''),
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
            ] else ...[
              TextSpan(
                text: text.substring(2),
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
