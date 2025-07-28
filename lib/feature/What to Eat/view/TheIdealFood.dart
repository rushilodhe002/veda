import 'package:donation_management/utils/constants/app_images.dart';
import 'package:donation_management/utils/extension/sized_box_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Theidealfood extends StatelessWidget {
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
                  'The Ideal Food Routine',
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
                      'An ideal food routine supports health, boosts energy, improves digestion, balances metabolism, enhances focus, strengthens immunity, and promotes overall well-being.',
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
                            'Follow these key points for an ideal food routine:'),
                        buildItemText(
                            '•Eat at regular intervals and avoid snaking in Between'),
                        buildItemText(
                            '• Consume freshly prepared food; avoid leftovers.'),
                        buildItemText(
                            '• Include all six tastes (Shad Rasa) in meals: sweet, sour, salty, bitter,'),
                        buildItemText(
                            '• Avoid eating when stressed or distracted; focus on mindful eating.'),
                        buildItemText(
                            '• Sit in a comfortable position while eating, and avoid multitasking.'),
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
                        buildSectionTitle('Sholkh :'),
                        const SizedBox(height: 8.0),
                        buildItemText(
                            '"हितं मितं च..." (Charaka Samhita Sutrasthana 5.24): Eat wholesome food in moderate amounts to maintain balance and health'),
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
