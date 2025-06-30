import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/eol/youtube_video_eol.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bold_bulletpoint.dart';
import 'package:veris744/widgets/columns_layout.dart';
import 'package:veris744/widgets/header.dart';
import 'package:veris744/widgets/top_bar_project.dart';
import 'package:veris744/widgets/up_button.dart';

class SocialMatchUp extends StatefulWidget {
  const SocialMatchUp({super.key});

  @override
  State<SocialMatchUp> createState() => _SocialMatchUpState();
}

class _SocialMatchUpState extends State<SocialMatchUp> {
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
                  Header(text: "Social MatchUp"),
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
                            duration: "3 months",
                            language: "C#",
                            software: "Unity, Oculus VR",
                            role: "Programmer",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 10,
                            children: [
                              LinkButton(
                                link:
                                    'https://github.com/veris744/Social-Matchup',
                                platform: Utils.checkLink(
                                  'https://github.com/veris744/Social-Matchup',
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparator,
                          ColumnsLayout(
                            text: Text(kDescSMU1, style: kBodyTextStyle),

                            imageWidget: SizedBox(
                              width: 600,
                              child: YoutubeVideoEol(),
                            ),
                          ),
                          kBlankSeparatorBig,
                          ...kDescSMU2.map(
                            (point) => BoldBulletpoint(
                              point: point[1],
                              title: point[0],
                              style: kBodyTextStyle,
                              styleBold: kBodyBoldTextStyle,
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
