import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/skills/languages.dart';
import 'package:veris744/skills/tools.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: kAccentColor),
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Skills',
              style: kHeader1Style,
              textAlign: TextAlign.center,
            ),
          ),
          kBlankSeparatorBig,
          Wrap(
            spacing: 10,
            runSpacing: 10,
            runAlignment: WrapAlignment.center,
            children: [LanguagesSkills(), ToolsSkills()],
          ),
          kBlankSeparatorBig,
          kBlankSeparatorBig,
        ],
    );
  }
}
