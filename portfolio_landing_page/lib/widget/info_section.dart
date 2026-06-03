import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/widget/about_section_content.dart';
import 'package:portfolio_landing_page/widget/contact_section.dart';
import 'package:portfolio_landing_page/widget/skill_section.dart';
import 'package:portfolio_landing_page/widget/vartical_devider.dart';

class InfoSection extends StatelessWidget {
  final bool isLandscape;
  const InfoSection({super.key, required this.isLandscape});

  @override
  Widget build(BuildContext context) {
    if (isLandscape) {
      return Column(
        children: [
          Divider(height: 20, thickness: 1, color: Color(0xFFE2E8F0)),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Expanded(child: AboutContent()),
              VarticalDevider(),
              Expanded(flex: 2, child: SkillSection()),
              VarticalDevider(),
              Expanded(child: ContactSection()),
            ],
          ),
        ],
      );
    }

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(height: 48, thickness: 1, color: Color(0xFFE2E8F0)),
        AboutContent(),
        Divider(height: 48),
        SkillSection(),
        Divider(height: 48),
        ContactSection(),
      ],
    );
  }
}
