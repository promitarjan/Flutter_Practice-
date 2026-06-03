import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/widget/skill_chip.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.code_off_sharp, color: Color(0xFF2563EB)),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                "Skills",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF2563EB),
                ),
              ),
            ),
          ],
        ),
        Table(
          columnWidths: {
            0: FlexColumnWidth(),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/flutter.svg",
                    label: "Flutter",
                  ),
                ),
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/dart.svg",
                    label: "Dart",
                  ),
                ),
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/firebase.svg",
                    label: "Firebase",
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/restapi.svg",
                    label: "REST API",
                  ),
                ),
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/git.svg",
                    label: "Git",
                  ),
                ),
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/ui.svg",
                    label: "UI/UX",
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/riverpod.svg",
                    label: "Riverpod",
                  ),
                ),
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/mysql.svg",
                    label: "MySQL",
                  ),
                ),
                _SkillCell(
                  child: SkillChip(
                    iconPath: "assets/icons/github.svg",
                    label: "GitHub",
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _SkillCell extends StatelessWidget {
  final Widget child;

  const _SkillCell({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, bottom: 15),
      child: child,
    );
  }
}
