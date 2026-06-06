import 'package:flutter/material.dart';
import 'package:product_showcase_screen/features/product_showcase/presentation/pages/product_showcase_header.dart';

class ProductShowcaseScreen extends StatelessWidget {
  const ProductShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: ProductShowcaseHeader())),
    );
  }
}
