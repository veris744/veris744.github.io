import 'package:flutter/material.dart';
import 'package:veris744/projects/video_background.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const VideoBackground(videoAssetPath: 'assets/videos/test.mp4'),
      ],
    );
  }
}