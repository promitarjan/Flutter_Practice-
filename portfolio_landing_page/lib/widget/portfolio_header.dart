import 'package:flutter/material.dart';

class PortfolioHeader extends StatelessWidget {
  final String header;
  const PortfolioHeader({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          header,
          style: TextStyle(
            color: Color(0xFF0F172A),
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),

        const SizedBox(width: 70),
        /*
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.send_rounded, size: 18),
          label: const Text('Hire Me'),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2563EB),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 11),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        */
      ],
    );
  }
}
