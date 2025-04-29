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
          horizontal: isWideScreen ? 100 : 10,
          vertical: 20,
        ),
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Column(
          children: [
            Text(
              kAboutMiniHeader,
              style: kHeader2Style,
              textAlign: TextAlign.center,
            ),
            kBlankSeparator,
            kBlankSeparator,
            Text(
              kAboutMini,
              style: TextStyle(color: kTextColor, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
