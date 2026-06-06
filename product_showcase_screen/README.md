# Product Showcase Screen

A beginner-friendly Flutter practice project for building a modern product showcase UI. This project displays a product grid using reusable product cards and includes a responsive layout for portrait and landscape mode. It is part of my Flutter practice journey.

## Features

- Product grid built with `GridView.count`
- Reusable `ProductCard` widget
- Card-based UI design
- Product image display using `Image.asset`
- Favorite icon button on each card
- Price display for each product
- Responsive layout for portrait and landscape mode
- Bottom navigation UI
- Clean feature-based folder structure

## Learning Goals

- Understand grid layouts in Flutter
- Practice reusable widget design
- Learn how to build card-based product UI
- Use `Image.asset` correctly for local images
- Add icons and buttons for UI actions
- Display product data clearly
- Build responsive layouts using `LayoutBuilder`
- Organize code using pages and widgets

## Screenshots

### Portrait Mode

<p align="left">
  <img src="lib/screenshot/portrait.jpg" alt="Product Showcase Portrait Screenshot" width="180"/>
</p>

### Landscape Mode

<p align="left">
  <img src="lib/screenshot/landscape.jpg" alt="Product Showcase Landscape Screenshot" width="420"/>
</p>

## Project Structure

```text
lib/
├── main.dart
├── features/
│   └── product_showcase/
│       ├── data/
│       │   └── product_seed_data.dart
│       ├── domain/
│       │   └── entities/
│       │       └── product.dart
│       └── presentation/
│           ├── pages/
│           │   └── product_showcase_screen.dart
│           └── widgets/
│               ├── product_showcase_header.dart
│               ├── product_card.dart
│               └── bottom_navigation_bar.dart
assets/
└── images/
	 └── products/
```

## Widgets Practiced

- `GridView.count`
- `Card`
- `Image.asset`
- `Text`
- `IconButton`
- `BottomNavigationBar`
- `SafeArea`
- `Padding`
- `Column`
- `Row`
- `Stack`
- `Positioned`
- `LayoutBuilder`

## How to Run

1. Get the dependencies:
	```bash
	flutter pub get
	```

2. Run the app:
	```bash
	flutter run
	```

3. Check for issues:
	```bash
	flutter analyze
	```

## What I Learned

- How to build a clean product showcase UI in Flutter
- How to reuse widgets to keep code organized
- How to separate UI code using a feature-based structure
- How to display local images with `Image.asset`
- How to create responsive layouts for different screen orientations
- How to make a simple UI look polished with cards, spacing, and icons
