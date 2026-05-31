import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const DigitalBusinessCardApp());
}

class DigitalBusinessCardApp extends StatelessWidget {
  const DigitalBusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Visiting Card",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),

      home: const BusinessCardScreen(),
    );
  }
}
