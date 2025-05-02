import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/project_pages/youtube_video.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/top_bar.dart';
import 'package:veris744/widgets/up_button.dart';

class EndOfLife extends StatefulWidget {
  const EndOfLife({super.key});

  @override
  State<EndOfLife> createState() => _EndOfLifeState();
}

class _EndOfLifeState extends State<EndOfLife> {
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
                    Text("End Of Life", style: kHeader1Style),
                    Status(
                      isDone: true,
                      duration: "1 year",
                      language: "C++",
                      software: "Unreal Engine 5",
                      role: "AI and UI programmer, producer",
                    ),
                    Container(
                      width: 400,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        awardEOL,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    kBlankSeparator,
                    LayoutBuilder(
                      builder: (context, constraints) {
                        bool isSmallScreen = constraints.maxWidth < 600;

                        final textWidget = Expanded(
                          child: Text(
                            kDesc1EOL,
                            style: TextStyle(fontSize: 16),
                          ),
                        );

                        final mediaWidget = SizedBox(
                          width: 600,
                          child: YoutubeVideo(), // or Image.asset(...)
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
                      child: Expanded(
                        child: Text(
                          "AI",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Expanded(
                        child: Text(
                          kDesc2EOL,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
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
