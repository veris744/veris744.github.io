import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: kAccentColor),
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(text, style: kHeader1Style, textAlign: TextAlign.center),
    );
  }
}
