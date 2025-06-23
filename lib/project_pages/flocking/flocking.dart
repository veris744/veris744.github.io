import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/sections/video.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/top_bar.dart';
import 'package:veris744/widgets/up_button.dart';

class Flocking extends StatefulWidget {
  const Flocking({super.key});

  @override
  State<Flocking> createState() => _FlockingState();
}

class _FlockingState extends State<Flocking> {
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
          FooterView(
            footer: Footer(
              backgroundColor: Colors.deepPurple[200],
              padding: EdgeInsets.all(0),
              child: Copyright(),
            ),
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: SizedBox(
                  width: 1400,
                  child: Column(
                    spacing: 15,
                    children: [
                      Text("Flocking Project", style: kHeader1Style),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          Status(
                            isDone: true,
                            duration: "1 week",
                            language: "C++",
                            software: "Unreal Engine 5",
                            role: "Solo project",
                          ),
                          SizedBox(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                LinkButton(
                                  link:
                                      'https://github.com/veris744/FlockingProject',
                                  platform: Utils.checkLink(
                                    'https://github.com/veris744/FlockingProject',
                                  ),
                                ),
                                LinkButton(
                                  link:
                                      'https://github.com/veris744/FlockingProject/releases',
                                  platform: Utils.checkLink(
                                    'https://github.com/veris744/FlockingProject/releases',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      kBlankSeparator,
                      SizedBox(
                        width: 1000,
                        child: Text(
                          kDescFlock1,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 1000,
                        child: Video(
                          videoAssetPath: 'assets/videos/flock.mp4',
                          imagePath: 'assets/images/flock.png',
                        ),
                      ),
                      SizedBox(
                        width: 1000,
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
                        width: 1000,
                        child: Text(
                          kDescFlock2,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      kBlankSeparator,
                      SizedBox(
                        width: 1000,
                        child: Text(
                          "Other Implementations",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 1000,
                        child: Text(
                          kDescFlock3,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
