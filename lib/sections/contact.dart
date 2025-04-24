import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text('Contact', style: Theme.of(context).textTheme.headlineMedium),
          Text('I build apps with Flutter...'),
        ],
      ),
    );
  }
}