import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late AnimationController _controller;
  late Animation _animation;

  void setUpController(TickerProvider vsync) {
    _controller = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void onClose() {
    _controller.dispose();
    super.onClose();
  }

  Animation get animation => _animation;

  void startAnimation() {
    _controller.forward();
  }

  void stopAnimation() {
    _controller.stop();
  }

  void resetAnimation() {
    _controller.reset();
  }
}
