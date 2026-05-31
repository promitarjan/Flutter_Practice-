import 'package:flutter/material.dart';
import 'package:visiting_card/business_info_card.dart';
import 'contact_info_row.dart';
import 'dot_divider.dart';
import 'social_icon_button.dart';

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5FF),
      appBar: AppBar(
        title: const Text("Business Card"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(height: 15),
                Center(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Ariana Rahman",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A103D),
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  "Flutter Developer & UI Designer",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 137, 57, 228),
                  ),
                ),

                DotDivider(),
                BusinessInfoCard(
                  child: Column(
                    children: [
                      ContactInfoRow(
                        icon: Icons.phone,
                        title: "Phone",
                        value: "+880 1712-345678",
                      ),
                      Divider(height: 20),
                      ContactInfoRow(
                        icon: Icons.email,
                        title: "Email",
                        value: "ariana@gmail.com",
                      ),
                      Divider(height: 20),
                      ContactInfoRow(
                        icon: Icons.web_outlined,
                        title: "Website",
                        value: "www.arianarahman.dev",
                      ),
                      Divider(height: 20),
                      ContactInfoRow(
                        icon: Icons.location_on,
                        title: "Location",
                        value: "Dhaka, Bangladesh",
                      ),
                    ],
                  ),
                ),
                //businessinfocard
                SizedBox(height: 15),
                BusinessInfoCard(
                  child: Column(
                    children: [
                      Text(
                        'Connect with me',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A103D),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SocialIconButton(icon: Icons.work),
                          SocialIconButton(icon: Icons.code),
                          SocialIconButton(icon: Icons.camera_alt),
                          SocialIconButton(icon: Icons.alternate_email),
                        ],
                      ),
                    ],
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
