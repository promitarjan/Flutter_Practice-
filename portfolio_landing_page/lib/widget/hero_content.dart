import 'package:flutter/material.dart';

class PortraitHeroContent extends StatelessWidget {
  const PortraitHeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 250,
      child: Stack(
        children: [
          Positioned.fill(
            child: _HeroTextContent(
              greet: "Hello, I'm",
              name: "Promit Dey Sarker Arjan",
              designation: "Flutter Developer",
              workDescription:
                  "I build beautiful, responsive and user-friendly mobile applications.",
              nameFontSize: 22,
              padding: EdgeInsets.fromLTRB(20, 20, 145, 20),
            ),
          ),
          Positioned(
            top: 10,
            right: -2,
            bottom: -16,
            child: _ProfileImage(size: 170),
          ),
        ],
      ),
    );
  }
}

class LandscapeHeroContent extends StatelessWidget {
  const LandscapeHeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 320,
      child: Stack(
        children: [
          Positioned.fill(
            child: _HeroTextContent(
              greet: "Hello, I'm",
              name: "Promit Dey Sarker Arjan",
              designation: "Flutter Developer",
              workDescription:
                  "I build beautiful, responsive and user-friendly mobile applications.",
              nameFontSize: 36,
              padding: EdgeInsets.fromLTRB(36, 36, 320, 36),
            ),
          ),
          Positioned(
            top: 36,
            right: 0,
            bottom: 0,
            child: _ProfileImage(size: 280),
          ),
        ],
      ),
    );
  }
}

class _HeroTextContent extends StatelessWidget {
  final String greet;
  final String name;
  final String designation;
  final String workDescription;
  final double nameFontSize;
  final EdgeInsets padding;

  const _HeroTextContent({
    required this.greet,
    required this.name,
    required this.designation,
    required this.workDescription,
    required this.nameFontSize,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            greet,
            style: const TextStyle(
              color: Color(0xFF2563EB),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: const Color(0xFF0F172A),
              fontSize: nameFontSize,
              fontWeight: FontWeight.w800,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            designation,
            style: const TextStyle(
              color: Color(0xFF2563EB),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            workDescription,

            style: const TextStyle(
              color: Color(0xFF334155),
              fontSize: 14,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  final double size;

  const _ProfileImage({required this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/profile.png",
      height: size,
      width: size,
      fit: BoxFit.contain,
    );
  }
}
