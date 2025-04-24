import 'package:flutter/material.dart';
import 'package:veris744/sections/containers/project.dart';

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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Project(
                  name: "Project1",
                  imagePath: "img",
                  tags: ["tag1", "tag2"],
                  description: "description",
                  navigateToProject: () {
                    Navigator.of(context).pushNamed('/projectA');
                  },
                ),
                Project(
                  name: "Project2",
                  imagePath: "img",
                  tags: ["tag1", "tag2"],
                  description: "description",
                  navigateToProject: () {
                    Navigator.of(context).pushNamed('/projectA');
                  },
                ),
                Project(
                  name: "Project3",
                  imagePath: "img",
                  tags: ["tag1", "tag2"],
                  description: "description",
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
