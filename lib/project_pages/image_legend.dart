import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class ImageLegend extends StatelessWidget {
  const ImageLegend({super.key, required this.path, required this.legend});

  final String path;
  final String legend;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(path),
        Text(
          legend,
          style: TextStyle(
            color: kBackgroundColor,
            fontStyle: FontStyle.italic,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
