import 'package:flutter/material.dart';
import 'package:veris744/sections/video_background.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return VideoBackground(videoAssetPath: 'assets/videos/intro2.mp4');
  }
}
