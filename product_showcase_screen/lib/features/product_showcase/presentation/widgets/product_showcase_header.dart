import 'package:flutter/material.dart';

class ProductShowcaseHeader extends StatelessWidget {
  const ProductShowcaseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    final bool isLandscape = orientation == Orientation.landscape;

    if (isLandscape) {
      return const _LandscapeHeader();
    }

    return const _PortraitHeader();
  }
}

class _PortraitHeader extends StatelessWidget {
  const _PortraitHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            const Spacer(),
            Stack(
              clipBehavior: Clip.none,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
                Positioned(
                  right: 6,
                  top: 4,
                  child: Container(
                    height: 18,
                    width: 18,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFF1D4ED8),
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 18),
        Text(
          'Featured Products',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w900,
            color: const Color(0xFF020617),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Discover trending picks',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xFF64748B),
          ),
        ),
      ],
    );
  }
}

class _LandscapeHeader extends StatelessWidget {
  const _LandscapeHeader();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
          const SizedBox(width: 8),
          Text(
            'ShopNest',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
              color: const Color(0xFF172554),
            ),
          ),
          const SizedBox(width: 24),
          Container(height: 24, width: 1, color: const Color(0xFFE2E8F0)),
          const SizedBox(width: 24),
          Text(
            'Featured Products',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w900,
              color: const Color(0xFF020617),
            ),
          ),
          const Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
              Positioned(
                right: 6,
                top: 4,
                child: Container(
                  height: 18,
                  width: 18,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1D4ED8),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
