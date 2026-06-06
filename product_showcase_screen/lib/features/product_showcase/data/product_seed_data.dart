import 'package:product_showcase_screen/features/product_showcase/domain/entities/product.dart';

const List<Product> productSeedData = [
  Product(
    name: 'Urban Runner Sneakers',
    category: 'Footwear',
    price: '\$89.99',
    imgPath: 'assets/images/products/sneekers.jpg',
    isFavorite: false,
  ),
  Product(
    name: 'SoundWave Headphones',
    category: 'Audio',
    price: '\$129.00',
    imgPath: 'assets/images/products/headphones.jpg',
    isFavorite: true,
  ),
  Product(
    name: 'FitTrack Pro Smartwatch',
    category: 'Wearables',
    price: '\$149.99',
    imgPath: 'assets/images/products/smartwatch.jpg',
    isFavorite: true,
  ),
  Product(
    name: 'Explorer Backpack',
    category: 'Bags',
    price: '\$59.50',
    imgPath: 'assets/images/products/bagpack.jpg',
    isFavorite: false,
  ),
  Product(
    name: 'Nordic Table Lamp',
    category: 'Home Decor',
    price: '\$39.99',
    imgPath: 'assets/images/products/lamp.jpg',
    isFavorite: false,
  ),
  Product(
    name: 'Canon EOS 200D II',
    category: 'Cameras',
    price: '\$479.00',
    imgPath: 'assets/images/products/camera.jpg',
    isFavorite: false,
  ),
];
