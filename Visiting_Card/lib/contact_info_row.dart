import 'package:flutter/material.dart';

class ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const ContactInfoRow({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.deepPurpleAccent, size: 28),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF1A103D),
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 5),
              Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(137, 92, 90, 90),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
