import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/widget/info_section.dart';
import 'widget/hero_section.dart';
import 'widget/portfolio_header.dart';

class PortfolioLandingPage extends StatelessWidget {
  const PortfolioLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.orientationOf(context);
    final Size screenSize = MediaQuery.sizeOf(context);
    final bool isLandscape = orientation == Orientation.landscape;

    final double horizontalPadding = isLandscape ? 20 : 20;
    final double maxContentWidth = isLandscape ? 1200 : screenSize.width;

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
                    SizedBox(height: 24),
                    InfoSection(isLandscape: isLandscape),
                    SizedBox(height: 30),
                    last_line(isLandscape: isLandscape),
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

class last_line extends StatelessWidget {
  final bool isLandscape;
  const last_line({super.key, required this.isLandscape});

  @override
  Widget build(BuildContext context) {
    if (isLandscape) {
      return Center(
        child: Row(
          children: [
            Text(
              "                                              @2026 Promit Arjan. All Rights Reserved  .  Built With",
            ),
            Icon(Icons.heart_broken),
            Text("using Flutter"),
          ],
        ),
      );
    }
    return Text("");
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
