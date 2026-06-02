import 'package:flutter/material.dart';

class PortfolioLandingPage extends StatelessWidget {
  const PortfolioLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.orientationOf(context);
    final Size screenSize = MediaQuery.sizeOf(context);
    final bool isLandscape = orientation == Orientation.landscape;

    final double horizontlPadding = isLandscape ? 40 : 20;
    final double maxContentWidth = isLandscape ? 1000 : screenSize.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxContentWidth),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontlPadding,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "My Portfolio",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0F172A),
                      ),
                    ),

                    SizedBox(height: 24),
                    Text("Step by step will be updated"),
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
