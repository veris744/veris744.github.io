import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/projects/project.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/header.dart';

class ProjectsSectionPers extends StatelessWidget {
  const ProjectsSectionPers({super.key});

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
            Header(text: "Personal Projects"),
            kBlankSeparatorBig,
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
            kBlankSeparatorBig,
            kBlankSeparatorBig,
          ],
        ),
    );
  }
}
