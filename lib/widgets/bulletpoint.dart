import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class Bulletpoint extends StatelessWidget {
  const Bulletpoint({super.key, required this.point, this.textColor = kTextColor});

  final String point;
  final Color textColor;

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
            Icon(Icons.done, color: Colors.green),
            SizedBox(width: 5,),
            Flexible(child: Text(point, style: TextStyle(color: textColor))),
          ],
        ),
      ),
    );
  }
}
