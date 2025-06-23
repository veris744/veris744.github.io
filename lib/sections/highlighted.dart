import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bold_bulletpoint.dart';
import 'package:veris744/widgets/carousel.dart';

class HighlightedSection extends StatelessWidget {
  HighlightedSection({super.key});

  final List<String> imageUrls = [
    'assets/images/gameshot.png',
    'assets/images/editor2.png',
    'assets/images/editorEdi.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(color: kPrimaryColor),
          child: Column(children: [
          Text(
            'Current Project',
            style: kHeader1Style,
            textAlign: TextAlign.center,
          ),
          Text(
            'C++ Game Engine',
            style: kHeader2Style,
            textAlign: TextAlign.center,
          )])),
          kBlankSeparator,
          CarouselWithButtons(imagePaths: imageUrls),
          kBlankSeparator,
          Container(
            width: 1200,
            padding: EdgeInsets.all(8),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(kHighlighted1, style: kBodyTextStyle,),
                ...kBPAccomplished.map(
                  (point) => BoldBulletpoint(point: point[1], title: point[0])
                ),
                // kBlankSeparator,Text(kUpcoming),
                // ...kBPUpcoming.map(
                //   (point) => Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Icon(
                //         Icons.done,
                //         color: const Color.fromARGB(255, 0, 0, 0),
                //       ),
                //       SizedBox(width: 5),
                //       Flexible(
                //         child: Text(
                //           point,
                //           style: TextStyle(
                //             color: const Color.fromARGB(255, 0, 0, 0),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          kBlankSeparator,
          Container(
            decoration: BoxDecoration(
              color: kAccentColor
            ),
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child:
          Link(
            uri: Uri.parse('/Engine'),
            target: LinkTarget.self,
            builder: (context, followLink) {
              return TextButton(
                onPressed: followLink,
                child: Text("See More", style: TextStyle(color: kTextColor, fontSize: 18, fontWeight: FontWeight.bold)),
              );
            },
          )),
          kBlankSeparator,
          kBlankSeparator
        ],
      ),
    );
  }
}
