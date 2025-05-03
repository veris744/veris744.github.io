import 'package:flutter/material.dart';

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
            color: Colors.grey[600],
            fontStyle: FontStyle.italic,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
