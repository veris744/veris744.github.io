import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/texts.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxWidth: double.infinity,
        minHeight: 0,
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(5),
        color: kPrimaryColor,
        child: Text(kCopyright, style: TextStyle(fontSize: 13, color: kBackgroundColor), textAlign: TextAlign.center,),
      )
    );
  }
}