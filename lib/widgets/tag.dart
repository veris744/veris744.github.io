

import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class Tag extends StatelessWidget {
  const Tag({super.key, required this.name});

  final String name;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 5
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: tags.containsKey(name) ? tags[name] : Color.fromARGB(255, 116, 116, 116)
      ),
      child: Text(name, style: TextStyle(fontSize: 10, color: kTextColor),),
    );
  }

}