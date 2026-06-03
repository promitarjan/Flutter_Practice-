import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.mail, color: Color(0xFF2563EB)),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                "Contact Me",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF2563EB),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const _ContactInfoRow(
          icon: Icons.mail_outlined,
          text: "arjanpromit@gmail.com",
        ),
        const SizedBox(height: 10),
        const _ContactInfoRow(
          icon: Icons.phone_in_talk_outlined,
          text: "+880 1234-567890",
        ),
        const SizedBox(height: 10),
        const _ContactInfoRow(
          icon: Icons.location_pin,
          text: "Dhaka, Bangladesh",
        ),
        const SizedBox(height: 18),
        Row(
          children: [
            SvgPicture.asset(
              "assets/icons/linkedin.svg",
              width: 27.0005,
              height: 27.0005,
            ),
            const SizedBox(width: 17),
            SvgPicture.asset(
              "assets/icons/github.svg",
              width: 27.0005,
              height: 27.0005,
            ),
            const SizedBox(width: 17),
            SvgPicture.asset(
              "assets/icons/twitter.svg",
              width: 27.0005,
              height: 27.0005,
            ),
            const SizedBox(width: 17),
            SvgPicture.asset(
              "assets/icons/instagram.svg",
              width: 27.0005,
              height: 27.0005,
            ),
          ],
        ),
      ],
    );
  }
}

class _ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _ContactInfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF2563EB), size: 20),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xFF334155),
            ),
          ),
        ),
      ],
    );
  }
}
