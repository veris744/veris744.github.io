import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class Bulletpoint extends StatelessWidget {
  const Bulletpoint({super.key, required this.point, required this.style});

  final String point;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxWidth: double.infinity,
        minHeight: 0,
      ),
      child: Container(
        padding: EdgeInsets.all(2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.done, color: kTickColor),
            SizedBox(width: 5,),
            Flexible(child: Text(point, style: style)),
          ],
        ),
      ),
    );
  }
}
