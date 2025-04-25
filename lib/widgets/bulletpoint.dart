import 'package:flutter/material.dart';

class Bulletpoint extends StatelessWidget {
  const Bulletpoint({super.key, required this.point});

  final String point;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxWidth: double.infinity,
        minHeight: 0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Icon(Icons.done), Flexible(child: Text(point))],
      ),
    );
  }
}
