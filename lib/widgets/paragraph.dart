import 'package:flutter/material.dart';

enum ParagraphSize { sm, md, lg }

class Paragraph extends StatelessWidget {
  const Paragraph({
    super.key,
    required this.text,
    this.size = ParagraphSize.md,
  });

  final String text;
  final ParagraphSize size;

  double get listSize => 14 + size.index * 4;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white.withAlpha(200),
        fontSize: listSize,
      ),
    );
  }
}
