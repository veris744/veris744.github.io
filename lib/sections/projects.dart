import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headlineMedium),
          Text('I build apps with Flutter...'),
        ],
      ),
    );
  }
}