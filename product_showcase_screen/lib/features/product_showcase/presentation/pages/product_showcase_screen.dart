import 'package:flutter/material.dart';
import 'package:product_showcase_screen/features/product_showcase/data/product_seed_data.dart';
import 'package:product_showcase_screen/features/product_showcase/presentation/widgets/bottom_navigation_bar.dart';
import 'package:product_showcase_screen/features/product_showcase/presentation/widgets/product_card.dart';
import 'package:product_showcase_screen/features/product_showcase/presentation/widgets/product_showcase_header.dart';

class ProductShowcaseScreen extends StatelessWidget {
  const ProductShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductShowcaseHeader(),
              const SizedBox(height: 24),
              Expanded(child: _buildProductGrid()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ProductShowcaseBottomNavigationBar(),
    );
  }

  Widget _buildProductGrid() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double availableWidth = constraints.maxWidth;
        final int columnCount = availableWidth >= 700 ? 3 : 2;
        final double aspectRatio = availableWidth >= 700 ? 1.45 : 0.68;

        return GridView.count(
          crossAxisCount: columnCount,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: aspectRatio,
          padding: const EdgeInsets.only(bottom: 18),
          children: productSeedData.map((product) {
            return ProductCard(product: product);
          }).toList(),
        );
      },
    );
  }
}
