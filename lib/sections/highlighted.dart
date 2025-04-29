import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
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
    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text('Current Project', style: kHeader1Style),
          Text('C++ Game Engine', style: kHeader2Style),
          kBlankSeparator,
          CarouselWithButtons(imagePaths: imageUrls),
          kBlankSeparator,
          Text('I build apps with Flutter...'),
        ],
      ),
    );
  }
}
