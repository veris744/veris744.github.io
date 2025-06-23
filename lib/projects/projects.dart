import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/projects/project.dart';
import 'package:veris744/texts.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity, // Full width
        maxWidth: double.infinity,
        minHeight: 0, // Flexible height
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: kTitleColor),
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text('Academic Projects', style: kHeader1Style, textAlign: TextAlign.center,),
            ),
            kBlankSeparator,
            kBlankSeparator,
            kBlankSeparator,
              Wrap(
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
                    platforms: [
                      Platforms.vr,
                      Platforms.android,
                      Platforms.itch,
                    ],
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
                    platforms: [Platforms.vr, Platforms.oculus, Platforms.itch],
                    links: ['https://github.com/veris744/Social-Matchup'],
                  ),
                ],
              ),
            
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: kTitleColor),
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text('Personal Projects', style: kHeader1Style, textAlign: TextAlign.center,),
            ),
            kBlankSeparator,
            kBlankSeparator,
            kBlankSeparator,
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 10,
              children: [
                Project(
                  name: "C++ Game Engine",
                  imagePath: "assets/images/editorMenu.png",
                  tags: ["C++", "Tools", "AI", "UI", "OpenGL"],
                  description: kEngineShortDesc,
                  bulletPoints: kBPEngine,
                  pageName: "Engine",
                  links: ['https://github.com/veris744/WHYNOT'],
                  platforms: [Platforms.windows],
                ),
                Project(
                  name: "Flocking Project",
                  imagePath: "assets/images/flock.png",
                  tags: ["C++", "UE5", "AI"],
                  description: kFlockShortDesc,
                  bulletPoints: kBPFlock,
                  pageName: "Flocking",
                  platforms: [Platforms.windows],
                  links: [
                    'https://github.com/veris744/FlockingProject',
                    'https://github.com/veris744/FlockingProject/releases',
                  ],
                ),
                Project(
                  name: "Cofrade Rush",
                  imagePath: "assets/images/CJ.png",
                  tags: ["C#", "Unity", "Jam"],
                  description: kCJShortDesc,
                  bulletPoints: kBPCJ,
                  pageName: "Cofrade",
                  platforms: [Platforms.windows],
                  links: [
                    'https://drive.google.com/file/d/1A2k6cqOauVtco13eBbCf0lCLFkUT1Jl_/view?usp=drive_link',
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
