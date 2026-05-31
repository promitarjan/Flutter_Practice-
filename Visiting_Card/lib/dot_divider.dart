import 'package:flutter/material.dart';

class DotDivider extends StatelessWidget {
  const DotDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: Color(0xFFE0D7F8), thickness: 1)),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
          child: Icon(Icons.circle, size: 8, color: Colors.deepPurpleAccent),
        ),
        Expanded(child: Divider(color: Color(0xFFE0D7F8), thickness: 1)),
      ],
    );
  }
}
