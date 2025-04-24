import 'package:flutter/material.dart';

class HighlightedSection extends StatelessWidget {
  const HighlightedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text('Highlighted', style: Theme.of(context).textTheme.headlineMedium),
          Text('I build apps with Flutter...'),
        ],
      ),
    );
  }
}