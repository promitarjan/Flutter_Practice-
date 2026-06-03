import 'package:flutter/material.dart';
import 'about_section_content.dart';

class AboutSection extends StatelessWidget {
  final bool isLandscape;

  const AboutSection({super.key, required this.isLandscape});

  @override
  Widget build(BuildContext context) {
    return isLandscape
        ? const LandscapeAboutContent()
        : const PortraitAboutContent();
  }
}
