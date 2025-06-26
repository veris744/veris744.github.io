
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
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("DEV TOOLS", style: kHeader2Style, textAlign: TextAlign.center),
          Expanded(
            child: Center(
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Skill(
                    iconPath: "assets/icons/ue.svg",
                    name: "Unreal Engine 5",
                  ),
                  Skill(iconPath: "assets/icons/opengl.svg", name: "OpenGL"),
                  Skill(
                    iconPath: "assets/icons/vs.svg",
                    name: "Visual Studio 2022",
                  ),
                  Skill(iconPath: "assets/icons/unity.svg", name: "Unity"),
                  Skill(iconPath: "assets/icons/git.svg", name: "Git"),
                  Skill(iconPath: "assets/icons/argo.svg", name: "ArgoCD"),
                  Skill(iconPath: "assets/icons/kubernetes.svg", name: "Kubernetes"),
                  Skill(iconPath: "assets/icons/jenkins.svg", name: "Jenkins"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
