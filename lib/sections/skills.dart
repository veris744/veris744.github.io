import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text('Skills', style: Theme.of(context).textTheme.headlineMedium),
          Text('I build apps with Flutter...'),
        ],
      ),
    );
  }
}