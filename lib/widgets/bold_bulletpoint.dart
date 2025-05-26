import 'package:flutter/material.dart';

class BoldBulletpoint extends StatelessWidget {
  const BoldBulletpoint({super.key, required this.point, required this.title});

  final String title;
  final String point;

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
            SizedBox(width: 5),
            Flexible(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 16.0, color: Colors.black, height: 1.5,),
                  children: <TextSpan>[
                    TextSpan(
                      text: title,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 1.5,),
                    ),
                    TextSpan(text: point),
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
