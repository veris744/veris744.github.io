import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity, // Full width
        maxWidth: double.infinity,
        minHeight: 0, // Flexible height
      ),
      child: Container(
        width: double.infinity, // Ensure full width
        // padding: EdgeInsets.symmetric(
        //   vertical: 10,
        //   horizontal: 10,
        // ),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Only take needed height
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About Me'),
            SizedBox(height: 10),
            Text(
              'I build cross-platform apps with Flutter...',
            ),
            // Add more content...
          ],
        ),
      ),
    );
  }
}