// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'chatbot_model.dart';


// class ChatbotRepository {
//   final String apiKey = "AIzaSyAH2tWdMAEKtzLAsPXfYKT_o-4X5TW1_wI";
//   final String apiUrl = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=";

//   Future<ChatbotResponseModel?> getChatbotResponse(String message) async {
//     try {
//       final url = Uri.parse("$apiUrl$apiKey");

//       final response = await http.post(
//         url,
//         headers: {'Content-Type': 'application/json'},
//         body: json.encode({
//           "contents": [
//             {
//               "parts": [
//                 {"text": message}
//               ]
//             }
//           ]
//         }),
//       );

//       if (response.statusCode == 200) {
//         final responseData = json.decode(response.body);
//         return ChatbotResponseModel.fromJson(responseData);
//       } else {
//         return ChatbotResponseModel(text: "Error: ${response.statusCode}");
//       }
//     } catch (e) {
//       return ChatbotResponseModel(text: "An error occurred: $e");
//     }
//   }
// }
