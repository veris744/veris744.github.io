import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/sections/video.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/columns_layout.dart';
import 'package:veris744/widgets/header.dart';
import 'package:veris744/widgets/top_bar.dart';
import 'package:veris744/widgets/top_bar_project.dart';
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
      backgroundColor: kBackgroundColor,
      appBar: TopBarProject(),
      body: Stack(
        children: [
          FooterView(
            footer: Footer(
              backgroundColor: kBackgroundColor,
              padding: EdgeInsets.all(0),
              child: Copyright(),
            ),
            children: [
              Column(
                children: [
                  Header(text: "Flocking Project"),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      width: 1400,
                      child: Column(
                        spacing: 15,
                        children: [
                          Status(
                            isDone: true,
                            duration: "1 week",
                            language: "C++",
                            software: "Unreal Engine 5",
                            role: "Solo project",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 10,
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
                          kBlankSeparator,
                          ColumnsLayout(
                            text: Column(
                              children: [
                                Text(kDescFlock1, style: kBodyTextStyle),
                                kBlankSeparatorBig,
                                Text(kDescFlock2, style: kBodyTextStyle),
                              ],
                            ),
                            imageWidget: SizedBox(
                              width: 600,
                              height: 350,
                              child: Video(
                                videoAssetPath: 'assets/videos/flock.mp4',
                                imagePath: 'assets/images/flock.png',
                              ),
                            ),
                          ),
                          kBlankSeparatorBig,
                          Text(kDescFlock3, style: kBodyTextStyle),
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
        ],
      ),
    );
  }
}
