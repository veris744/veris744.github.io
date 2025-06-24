import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/sections/video.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bold_bulletpoint.dart';
import 'package:veris744/widgets/bulletpoint.dart';
import 'package:veris744/widgets/carousel.dart';
import 'package:veris744/widgets/columns_layout.dart';

class HighlightedSection extends StatelessWidget {
  HighlightedSection({super.key});

  final List<String> imageUrls = [
    'assets/images/gameshot.png',
    'assets/images/editor2.png',
    'assets/images/editorEdi.png',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 1000;

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(color: kAccentColor),
            child: Column(
              children: [
                Text(
                  'Current Project',
                  style: kHeader1Style,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'C++ Game Engine',
                  style: kHeaderSubtitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          kBlankSeparator,
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal:
                  isWideScreen ? kHorizontalPadding : kHorizontalPaddingMob,
            ),
            child: Column(
              children: [
                ColumnsLayout(
                  text: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(kHighlighted1, style: kBodyTextStyle),
                      ...kBPAccomplished.map(
                        (point) =>
                            Bulletpoint(point: point, style: kBodyTextStyle),
                      ),
                    ],
                  ),
                  imageWidget: SizedBox(
                    width: 600,
                    height: 350,
                    child: Video(
                      videoAssetPath: 'assets/videos/enginegame.mp4',
                      imagePath: 'assets/images/editorMenu.png',
                    ),
                  ),
                ),
                kBlankSeparatorBig,
                Container(
                  decoration: BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: kTitleColor, width: 1.5)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Link(
                    uri: Uri.parse('/Engine'),
                    target: LinkTarget.self,
                    builder: (context, followLink) {
                      return TextButton(
                        onPressed: followLink,
                        child: Text(
                          "See More",
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
