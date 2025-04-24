import 'package:flutter/material.dart';
import 'package:veris744/widgets/top_bar.dart';

class ProjectAPage extends StatelessWidget {
  const ProjectAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        scrollToHihlighted: () => Navigator.of(context).pushNamed('/'),
        scrollToProjects: () => Navigator.of(context).pushNamed('/'),
        scrollToSkills: () => Navigator.of(context).pushNamed('/'),
        scrollToAbout: () => Navigator.of(context).pushNamed('/'),
        scrollToContact: () => Navigator.of(context).pushNamed('/'),
      ),
      body: Stack(
        children: [
          ListView(children: [Text("Project")]),
        ],
      ),
    );
  }
}
