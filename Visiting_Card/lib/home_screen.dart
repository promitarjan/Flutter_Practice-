import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Business Card"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
        ),
        body: const Center(child: Text("This is the body")),
      ),
    );
  }
}
