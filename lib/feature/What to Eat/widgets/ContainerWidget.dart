import 'package:flutter/material.dart';

// Custom Container Widget
class CustomContainerwidget extends StatelessWidget {
  final String? title;
  final Widget? child;
  final bool showDivider;

  const CustomContainerwidget({super.key, this.title, this.child, this.showDivider = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                title!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          if (showDivider) const Divider(thickness: 1, color: Colors.grey), // Optional Divider
          if (child != null) child!,
        ],
      ),
    );
  }
}

// Bullet Point Widget
class BulletPoint extends StatelessWidget {
  final String text;
  final bool showDivider;

  const BulletPoint({super.key, required this.text, this.showDivider = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("• ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                softWrap: true,
              ),
            ),
          ],
        ),
        if (showDivider) const Divider(thickness: 0.8, color: Colors.grey), // Optional Divider
      ],
    );
  }
}

// Plain Text Widget
class PlainText extends StatelessWidget {
  final String text;

  const PlainText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
      softWrap: true,
    );
  }
}

// Highlighted Note Widget
class HighlightedNote extends StatelessWidget {
  final String text;

  const HighlightedNote({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red, width: 1),
      ),
      child: Row(
        children: [
          const Icon(Icons.warning, color: Colors.red, size: 18),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.red),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
