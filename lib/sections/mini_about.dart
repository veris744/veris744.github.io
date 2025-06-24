import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/header.dart';

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
      child: Column(
        children: [
          Header(text: "About Me"),
          kBlankSeparatorBig,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal:
                  isWideScreen ? kHorizontalPadding : kHorizontalPaddingMob,
            ),
            child: Text(
              kAboutText,
              style: kBodyTextStyle,
              textAlign: TextAlign.justify,
            ),
          ),
          kBlankSeparatorBig,
          kBlankSeparatorBig,
        ],
      ),
    );
  }
}
