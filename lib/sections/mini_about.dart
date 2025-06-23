import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/texts.dart';

class MiniAbout extends StatelessWidget {
  const MiniAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 1000;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity, // Full width
        maxWidth: double.infinity,
        minHeight: 0,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isWideScreen ? 300 : 10,
          vertical: 20,
        ),
        child: Column(
          children: [
            Text(
              "About Me",
              style: kHeader1Style,
              textAlign: TextAlign.center,
            ),
            kBlankSeparator,
            kBlankSeparator,
            Text(
              kAboutText,
              style: kBodyTextStyle,
              textAlign: TextAlign.justify,
            ),
            kBlankSeparator
          ],
        ),
      ),
    );
  }
}
