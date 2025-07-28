import 'package:flutter/material.dart';
import '../../../utils/navigation/bottom_navbar_widget.dart';


class HomeAddBottomBar extends StatelessWidget {
  const HomeAddBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBarWidget(),
    );
  }
}
