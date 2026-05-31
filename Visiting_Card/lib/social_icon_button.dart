import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final IconData icon;
  const SocialIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: const Color(0xFFF0E9FF),
      child: Icon(icon, color: Colors.deepPurpleAccent, size: 22),
    );
  }
}
