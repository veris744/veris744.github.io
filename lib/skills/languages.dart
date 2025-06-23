import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/skills/skill.dart';

class LanguagesSkills extends StatelessWidget {
  const LanguagesSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("LANGUAGES", style: kHeader2Style, textAlign: TextAlign.center),
          Expanded(
            child: Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 40,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  Skill(iconPath: "assets/icons/cpp.svg", name: "C++"),
                  Skill(iconPath: "assets/icons/csharp.svg", name: "C#"),
                  Skill(iconPath: "assets/icons/flutter.svg", name: "Flutter"),
                  Skill(iconPath: "assets/icons/python.svg", name: "Python"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
