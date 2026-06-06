import 'package:flutter/material.dart';
import 'package:product_showcase_screen/features/product_showcase/presentation/pages/product_showcase_screen.dart';

void main() {
  runApp(const ProductShowcaseApp());
}

class ProductShowcaseApp extends StatelessWidget {
  const ProductShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Product Showcase Screen",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1D4ED8)),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        fontFamily: "Roboto",
      ),
      debugShowCheckedModeBanner: false,
      home: ProductShowcaseScreen(),
    );
  }
}
