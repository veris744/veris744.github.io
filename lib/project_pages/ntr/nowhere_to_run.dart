import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/ntr/youtube_video_ntr.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bold_bulletpoint.dart';
import 'package:veris744/widgets/columns_layout.dart';
import 'package:veris744/widgets/header.dart';
import 'package:veris744/widgets/top_bar_project.dart';
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
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBarProject(),
      body: Stack(
        children: [
          FooterView(
            footer: Footer(
              backgroundColor: Colors.deepPurple[200],
              padding: EdgeInsets.all(0),
              child: Copyright(),
            ),
            children: [
              Column(
                children: [
                  Header(text: "Nowhere To Run"),
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
                            duration: "6 months",
                            language: "C#",
                            software: "Unity, Android VR",
                            role: "Solo project",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 10,
                            children: [
                              LinkButton(
                                link: 'https://veris744.itch.io/nowhere-to-run',
                                platform: Utils.checkLink(
                                  'https://veris744.itch.io/nowhere-to-run',
                                ),
                              ),
                              LinkButton(
                                link:
                                    'https://github.com/veris744/NowhereToRun',
                                platform: Utils.checkLink(
                                  'https://github.com/veris744/NowhereToRun',
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparator,
                          ColumnsLayout(
                            text: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 5,
                              children: [
                                Text(kDescNTR1, style: kBodyTextStyle, textAlign: TextAlign.justify),
                                SizedBox(height: 8),
                                ...kDescNTR2.map(
                                  (point) => BoldBulletpoint(
                                    point: point[1],
                                    title: point[0],
                                    style: kBodyTextStyle,
                                    styleBold: kBodyBoldTextStyle,
                                  ),
                                ),
                              ],
                            ),
                            imageWidget: SizedBox(
                              width: 600,
                              child: YoutubeVideoNtr(),
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
        ],
      ),
    );
  }
}
