import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/header.dart';

class IconHeader extends StatelessWidget {
  const IconHeader({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Icon(
          icon,
          size: 32,
          color: Colors.white,
        ),
        Header(text: text),
      ],
    );
  }
}
