import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/skills/skill.dart';

class ToolsSkills extends StatelessWidget {
  const ToolsSkills({super.key});

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
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("DEV TOOL", style: kHeader2Style, textAlign: TextAlign.center),
          kBlankSeparator,
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              Skill(iconPath: "assets/icons/ue.svg", name: "Unreal Engine 5",),
              Skill(iconPath: "assets/icons/opengl.svg", name: "OpenGL",),
              Skill(iconPath: "assets/icons/vs.svg", name: "Visual Studio 2022",),
              Skill(iconPath: "assets/icons/unity.svg", name: "Unity",),
              Skill(iconPath: "assets/icons/jenkins.svg", name: "Jenkins",),
            ],
          )
        ]
      ));
  }


}