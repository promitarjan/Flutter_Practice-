import 'package:flutter/material.dart';
import 'hero_content.dart';

class HeroSection extends StatelessWidget {
  final bool isLandscape;
  const HeroSection({super.key, required this.isLandscape});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: const Color(0xFFEFF6FF),
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: isLandscape
          ? const LandscapeHeroContent()
          : const PortraitHeroContent(),
    );
  }
}
