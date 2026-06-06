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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ProductShowcaseHeader(),
              SizedBox(height: 24),
              Expanded(child: gridview()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ProductShowcaseBottomNavigationBar(),
    );
  }

  GridView gridview() {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      childAspectRatio: 0.65,
      children: productSeedData.map((product) {
        return ProductCard(product: product);
      }).toList(),
    );
  }
}
