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
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
          color: Color.fromRGBO(173, 173, 173, 1),
        ),
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Academic Projects', style: kHeader1Style),
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
                  award: 'PlayStation Talents Finalist',
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
                  platforms: [Platforms.vr, Platforms.oculus, Platforms.itch],
                  links: ['https://github.com/veris744/Social-Matchup'],
                ),
              ],
            ),
            kBlankSeparator,
            kBlankSeparator,
            kBlankSeparator,
            kBlankSeparator,
            Text('Personal Projects', style: kHeader1Style),
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
