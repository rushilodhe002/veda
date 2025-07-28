// Function to show a loading dialog
import 'package:flutter/material.dart';
import '../../constants/app_strings/local_storage_key_strings.dart';
import 'app_lottie_loader.dart';

void showLoadingDialog() {
  showDialog(
      context: LocalStorageKeyStrings.appNavKey.currentContext!,
      barrierDismissible: false, // Prevent dismissing by tapping outside
      builder: (BuildContext context) {
        return const Center(child: AppLottieLoader());
      });
}


hideLoadingDialog(){
   Navigator.pop(LocalStorageKeyStrings.appNavKey.currentContext!);
}
