import 'package:flutter/material.dart';

class AlternatingText extends StatelessWidget {
  final List<String> parts;
  final TextStyle? normalStyle;
  final TextStyle? boldStyle;

  const AlternatingText({
    super.key,
    required this.parts,
    this.normalStyle,
    this.boldStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: List.generate(parts.length, (index) {
          final isBold = index % 2 == 1;
          return TextSpan(
            text: parts[index],
            style: isBold
                ? boldStyle ?? const TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
                : normalStyle ?? const TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
          );
        }),
      ),
    );
  }
}
