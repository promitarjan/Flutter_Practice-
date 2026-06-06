import 'package:flutter/material.dart';

class ProductShowcaseHeader extends StatelessWidget {
  const ProductShowcaseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SizedBox(height: 12),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
            const Spacer(),
            Text(
              'ShopNest',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
                color: const Color(0xFF172554),
              ),
            ),
            Spacer(),
            Stack(
              clipBehavior: Clip.none,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_outlined),
                ),
                Positioned(
                  right: 6,
                  top: 4,
                  child: Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFF1D4ED8),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
