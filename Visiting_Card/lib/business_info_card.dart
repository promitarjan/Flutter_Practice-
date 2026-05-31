import 'package:flutter/material.dart';

class BusinessInfoCard extends StatelessWidget {
  final Widget child;

  const BusinessInfoCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(padding: EdgeInsets.all(15), child: child),
    );
  }
}
