import 'package:flutter/material.dart';

enum HeaderSize { sm, md, lg, xl }

class Header extends StatelessWidget {
  const Header({super.key, required this.text, this.size = HeaderSize.md});

  final String text;
  final HeaderSize size;

  double get listSize => 20 + size.index * 6;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: listSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
