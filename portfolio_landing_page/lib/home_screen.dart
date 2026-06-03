import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/widget/about_section.dart';
import 'widget/hero_section.dart';
import 'widget/portfolio_header.dart';

class PortfolioLandingPage extends StatelessWidget {
  const PortfolioLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.orientationOf(context);
    final Size screenSize = MediaQuery.sizeOf(context);
    final bool isLandscape = orientation == Orientation.landscape;

    final double horizontalPadding = isLandscape ? 40 : 20;
    final double maxContentWidth = isLandscape ? 1000 : screenSize.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxContentWidth),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const PortfolioHeader(header: "My Portfolio"),
                    SizedBox(height: 24),
                    HeroSection(isLandscape: isLandscape),
                    AboutSection(isLandscape: isLandscape),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HiremeButton extends StatelessWidget {
  const HiremeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.send_rounded, size: 18),
      label: const Text('Hire Me'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2563EB),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 11),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
      ),
    );
  }
}
