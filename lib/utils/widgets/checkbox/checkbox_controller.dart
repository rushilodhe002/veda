import 'package:get/get.dart';

class CheckboxController extends GetxController {
  bool _isChecked = false;

  /// getters below
  bool get isChecked => _isChecked;

  ///getters above
  void toggle(bool value) {
    _isChecked = value;
    update();
  }
}
