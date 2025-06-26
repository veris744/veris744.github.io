import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/projects/project.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/header.dart';

class ProjectsSectionAc extends StatelessWidget {
  const ProjectsSectionAc({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxWidth: double.infinity,
        minHeight: 0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Header(text: "Academic Projects"),
          kBlankSeparatorBig,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Wrap(
              spacing: 20,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                Project(
                  name: "End of Life",
                  imagePath: "assets/images/eolCover.jpg",
                  tags: ["C++", "UE5", "AI", "UI", "Team Management"],
                  description: kEOLShortDesc,
                  bulletPoints: kBPEOL,
                  pageName: "EndOfLife",
                  links: [
                    'https://store.steampowered.com/app/2666520/End_Of_Life/',
                  ],
                  platforms: [Platforms.windows, Platforms.steam],
                  award: 'Play Station Talents Finalist 2023',
                ),
                Project(
                  name: "Nowhere To Run",
                  imagePath: "assets/images/NTR.png",
                  tags: ["C#", "Unity", "VR"],
                  description: kNTRShortDesc,
                  bulletPoints: kBPNTR,
                  pageName: "NowhereToRun",
                  platforms: [Platforms.vr, Platforms.android, Platforms.itch],
                  links: [
                    'https://veris744.itch.io/nowhere-to-run',
                    'https://github.com/veris744/NowhereToRun',
                  ],
                ),
                Project(
                  name: "Social MatchUp",
                  imagePath: "assets/images/test.png",
                  tags: ["C#", "Unity", "Oculus", "VR", "Multiplayer"],
                  description: kSMUShortDesc,
                  bulletPoints: kBPSMU,
                  pageName: "SocialMatchUp",
                  platforms: [Platforms.vr, Platforms.oculus],
                  links: ['https://github.com/veris744/Social-Matchup'],
                ),
              ],
            ),
          ),
          kBlankSeparatorBig,
          kBlankSeparatorBig,
        ],
      ),
    );
  }
}
