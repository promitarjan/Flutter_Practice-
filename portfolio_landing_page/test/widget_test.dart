import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:portfolio_landing_page/main.dart';

void main() {
  testWidgets('Portfolio landing page shows initial content', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const PortfolioApp());

    expect(find.text('My Portfolio'), findsOneWidget);
    expect(
      find.text('Portfolio content will be added step by step.'),
      findsOneWidget,
    );
    expect(find.byType(SingleChildScrollView), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
  });
}
