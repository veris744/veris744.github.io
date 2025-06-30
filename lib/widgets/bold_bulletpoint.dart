import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class BoldBulletpoint extends StatelessWidget {
  const BoldBulletpoint({super.key, required this.point, required this.title, required this.style, required this.styleBold });

  final String title;
  final String point;
  final TextStyle style;
  final TextStyle styleBold;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.done, color: kTickColor),
            SizedBox(width: 5),
            Flexible(
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: const TextStyle(fontSize: 16.0, color: Colors.black, height: 1.5,),
                  children: <TextSpan>[
                    TextSpan(
                      text: title,
                      style: styleBold,
                    ),
                    TextSpan(text: point, style: style,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
