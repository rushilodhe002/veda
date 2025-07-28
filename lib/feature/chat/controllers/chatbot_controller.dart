// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../repository/chatbot_model.dart';
// import '../repository/chatbot_repository.dart';


// class ChatbotController extends GetxController {
//   final messageController = TextEditingController();
//   final List<Map<String, String>> messages = [];
//   final ChatbotRepository _repository = ChatbotRepository();

//   void sendMessage() async {
//     if (messageController.text.trim().isEmpty) return;

//     final userMessage = messageController.text.trim();
//     messages.add({'text': userMessage, 'sender': 'You'});
//     update();

//     messageController.clear();

//     try {
//       final ChatbotResponseModel? response =
//           await _repository.getChatbotResponse(userMessage);

//       if (response != null && response.text != null && response.text!.isNotEmpty) {
//         messages.add({'text': response.text!, 'sender': 'AI'});
//       } else {
//         messages.add({
//           'text': 'Sorry, something went wrong. Please try again later.',
//           'sender': 'AI'
//         });
//       }
//     } catch (e) {
//       messages.add({
//         'text': 'An error occurred: $e',
//         'sender': 'Error'
//       });
//     }

//     update();
//   }
// }
