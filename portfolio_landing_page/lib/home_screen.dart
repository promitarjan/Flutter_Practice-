import 'package:flutter/material.dart';
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
