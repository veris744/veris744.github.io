import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/skills/languages.dart';
import 'package:veris744/skills/soft.dart';
import 'package:veris744/skills/tools.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text('Skills', style: kHeader1Style),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            runAlignment: WrapAlignment.center,
            children: [LanguagesSkills(), ToolsSkills()],
          ),
        ],
      ),
    );
  }
}
