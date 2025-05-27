import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/project_pages/youtube_video.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bold_bulletpoint.dart';
import 'package:veris744/widgets/top_bar.dart';
import 'package:veris744/widgets/up_button.dart';

class Cofrade extends StatefulWidget {
  const Cofrade({super.key});

  @override
  State<Cofrade> createState() => _CofradeState();
}

class _CofradeState extends State<Cofrade> {
  final ScrollController _scrollController = ScrollController();
  bool _showUpButton = false;

  void _scrollToTop() {
    _scrollController.jumpTo(0.0);
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final shouldShow = _scrollController.offset > 80;
      if (_showUpButton != shouldShow) {
        setState(() {
          _showUpButton = shouldShow;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: TopBar(
        scrollToHihlighted: () => Navigator.of(context).pushNamed('/'),
        scrollToProjects: () => Navigator.of(context).pushNamed('/'),
        scrollToSkills: () => Navigator.of(context).pushNamed('/'),
        scrollToAbout: () => Navigator.of(context).pushNamed('/'),
        scrollToContact: () => Navigator.of(context).pushNamed('/'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: 1400,
                child: Column(
                  spacing: 15,
                  children: [
                    Text("COFRADE RUSH", style: kHeader1Style),
                    Row(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Status(
                          isDone: true,
                          duration: "1 week",
                          language: "C#",
                          software: "Unity",
                          role: "Programmer",
                        ),
                        SizedBox(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              LinkButton(
                                link: 'https://drive.google.com/file/d/1A2k6cqOauVtco13eBbCf0lCLFkUT1Jl_/view?usp=drive_link',
                                platform: Utils.checkLink(
                                  'https://drive.google.com/file/d/1A2k6cqOauVtco13eBbCf0lCLFkUT1Jl_/view?usp=drive_link',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    kBlankSeparator,
                    LayoutBuilder(
                      builder: (context, constraints) {
                        bool isSmallScreen = constraints.maxWidth < 600;

                        final textWidget = Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(kDescCofr1, style: TextStyle(fontSize: 16)),
                              SizedBox(height: 8),
                              ...kDescCofr2.map(
                                (point) => BoldBulletpoint(
                                  point: point[1],
                                  title: point[0],
                                ),
                              ),
                            ],
                          ),
                        );

                        final mediaWidget = SizedBox(
                          width: isSmallScreen ? double.infinity : 600,
                          child: YoutubeVideo(
                            video: 'waJktW4Bhzg',
                          ), // Or Image.asset(...)
                        );

                        if (isSmallScreen) {
                          // Stack vertically, text first
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textWidget,
                              SizedBox(height: 16),
                              mediaWidget,
                            ],
                          );
                        } else {
                          // Side-by-side layout
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textWidget,
                              SizedBox(width: 20),
                              mediaWidget,
                            ],
                          );
                        }
                      },
                    ),
                    kBlankSeparator,
                    Copyright(),
                  ],
                ),
              ),
            ),
          ),
          if (_showUpButton)
            Positioned(
              bottom: 20,
              right: 20,
              child: UpButton(onPressed: _scrollToTop),
            ),
        ],
      ),
    );
  }
}
