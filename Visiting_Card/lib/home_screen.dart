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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(height: 15),
                Center(
                  child: CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Ariana Rahman",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A103D),
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  "Flutter Developer & UI Designer",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 137, 57, 228),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
