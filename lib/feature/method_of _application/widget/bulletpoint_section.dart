// import 'dart:ui';

// import 'package:donation_management/utils/constants/app_colors.dart';
// import 'package:flutter/material.dart';

// class BulletPoint extends StatelessWidget {
//   final String text;


//   const BulletPoint( {Key? key, required this.text, required TextStyle style,  }) : super(key: key);
  
  

//   @override
//   Widget build(BuildContext context, ) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             '•  ',
            
//             style: TextStyle(
//               fontSize: 16,
            
             
//               fontWeight: FontWeight.bold,
//             ),
//           ),

      
//           Expanded(
//             child: Text(
//               text,
           
//               style: const TextStyle(
//                 fontSize: 16,
//                 height: 1.3,
//               ),
//             ),
//           ),
          
//         ],
//       ),
//     );
//   }
// }

  import 'package:flutter/material.dart';

  class BulletPoint extends StatelessWidget {
    final String text;
    final TextStyle textStyle;
    final Color bulletColor;

    const BulletPoint({
      Key? key,
      required this.text,
      this.textStyle = const TextStyle(fontSize: 16, height: 1.3),
      this.bulletColor = Colors.black, required TextStyle style, // Default bullet color
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '•  ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: bulletColor, // Apply bullet color
              ),
            ),
            Expanded(
              child: Text(
                text,
                style: textStyle, // Use provided text style
              ),
            ),
          ],
        ),
      );
    }
  }
