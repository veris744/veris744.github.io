import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bulletpoint.dart';
import 'package:veris744/widgets/carousel.dart';

class HighlightedSection extends StatelessWidget {
  HighlightedSection({super.key});

  final List<String> imageUrls = [
    'assets/images/editor.png',
    'assets/images/eolCover.jpg',
    'assets/images/flock.png',
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 1400;

    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Current Project',
            style: kHeader1Style,
            textAlign: TextAlign.center,
          ),
          Text(
            'C++ Game Engine',
            style: kHeader2Style,
            textAlign: TextAlign.center,
          ),
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
                Text(kHighlighted1),
                ...kBPAccomplished.map(
                  (point) => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        child: Text(
                          point,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                kBlankSeparator,Text(kUpcoming),
                ...kBPUpcoming.map(
                  (point) => Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        child: Text(
                          point,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          kBlankSeparator,
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/Engine');
            },
            child: Text("See More", style: TextStyle(color: kTextColor)),
          ),
        ],
      ),
    );
  }
}
