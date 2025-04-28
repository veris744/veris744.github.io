import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Skill extends StatelessWidget {
  const Skill({super.key, required this.iconPath, required this.name});

  final String iconPath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 50,
            child: SvgPicture.network(iconPath, fit: BoxFit.contain),
          ),
          SizedBox(height: 5),
          Text(name, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
