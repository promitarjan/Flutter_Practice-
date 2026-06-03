import 'package:flutter/material.dart';

class PortraitAboutContent extends StatelessWidget {
  const PortraitAboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(height: 48, thickness: 1, color: Color(0xFFE2E8F0)),
        Row(
          children: [
            Icon(Icons.person, color: Color(0xFF2563EB)),
            SizedBox(width: 5),
            Text(
              "About Me",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Color(0xFF2563EB),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          'I am a passionate Flutter developer focused on building clean, responsive, and user-friendly mobile applications. I enjoy turning ideas into simple, practical, and visually polished digital products.',
          textAlign: TextAlign.justify,
          style: TextStyle(color: Color(0xFF334155), fontSize: 16, height: 1.6),
        ),
      ],
    );
  }
}

class LandscapeAboutContent extends StatelessWidget {
  const LandscapeAboutContent({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
