import 'package:flutter/material.dart';
import 'package:veris744/sections/containers/project.dart';
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
            Text('Projects', style: Theme.of(context).textTheme.headlineMedium),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Project(
                  name: "Project1",
                  imagePath: "assets/images/test.png",
                  tags: ["C++", "UE5", "AI", "UI"],
                  description: kLongDescription,
                  bulletPoints: kBulletPoints,
                  navigateToProject: () {
                    Navigator.of(context).pushNamed('/projectA');
                  },
                ),
                Project(
                  name: "Project2",
                  imagePath: "assets/images/test.png",
                  tags: ["C#", "Unity"],
                  description: "description",
                  bulletPoints: kBulletPoints,
                  navigateToProject: () {
                    Navigator.of(context).pushNamed('/projectA');
                  },
                ),
                Project(
                  name: "Project3",
                  imagePath: "assets/images/test.png",
                  tags: ["C++"],
                  description: "description",
                  bulletPoints: ["1 bulletpoint"],
                  navigateToProject: () {
                    Navigator.of(context).pushNamed('/projectA');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
