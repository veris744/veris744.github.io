import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/project_pages/youtube_video.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/top_bar.dart';
import 'package:veris744/widgets/up_button.dart';

class NowhereToRun extends StatefulWidget {
  const NowhereToRun({super.key});

  @override
  State<NowhereToRun> createState() => _NowhereToRunState();
}

class _NowhereToRunState extends State<NowhereToRun> {
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
    _scrollController.dispose(); // always dispose controllers!
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
                    Text("NOWHERE TO RUN", style: kHeader1Style),
                    Status(
                      isDone: true,
                      duration: "6 months",
                      language: "C#",
                      software: "Unity, Android VR",
                      role: "Solo project",
                    ),
                    kBlankSeparator,
                    LayoutBuilder(
                      builder: (context, constraints) {
                        bool isSmallScreen = constraints.maxWidth < 600;

                        final textWidget = Flexible(
                          child: Text(
                            kDesc1EOL,
                            style: TextStyle(fontSize: 16),
                          ),
                        );

                        final mediaWidget = SizedBox(
                          width: 600,
                          child: YoutubeVideo(video: 'waJktW4Bhzg'), // or Image.asset(...)
                        );

                        if (isSmallScreen) {
                          // Stack vertically, text comes first
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textWidget,
                              SizedBox(height: 16),
                              mediaWidget,
                            ],
                          );
                        } else {
                          // Row layout, image/video on the left
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
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Team Management",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        kDesc3EOL,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "AI",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        kDesc2EOL,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
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
