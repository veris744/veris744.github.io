import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/sections/video.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bold_bulletpoint.dart';
import 'package:veris744/widgets/columns_layout.dart';
import 'package:veris744/widgets/top_bar_project.dart';
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
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                child: SizedBox(
                  width: 1400,
                  child: Column(
                    spacing: 15,
                    children: [
                      Text("COFRADE RUSH", style: kHeader1Style),
                      Status(
                        isDone: true,
                        duration: "1 week",
                        language: "C#",
                        software: "Unity",
                        role: "Programmer",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          LinkButton(
                            link:
                                'https://drive.google.com/file/d/1A2k6cqOauVtco13eBbCf0lCLFkUT1Jl_/view?usp=drive_link',
                            platform: Utils.checkLink(
                              'https://drive.google.com/file/d/1A2k6cqOauVtco13eBbCf0lCLFkUT1Jl_/view?usp=drive_link',
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
                            Text(
                              kDescCofr1,
                              style: kBodyTextStyle,
                              textAlign: TextAlign.justify,
                            ),
                            kBlankSeparator,
                            ...kDescCofr2.map(
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
                          height: 350,
                          child: Video(
                            videoAssetPath: 'assets/videos/cofrade.mp4',
                            imagePath: 'assets/images/CJ.png',
                          ),
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
