import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/image_legend.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/project_pages/eol/youtube_video_eol.dart';
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
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
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
                padding: EdgeInsets.all(0),
                child: SizedBox(
                  width: 1400,
                  child: Column(
                    spacing: 15,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(color: kTitleColor),
                        child: Text("End Of Life", style: kHeader1Style, textAlign: TextAlign.center,),
                      ),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          Status(
                            isDone: true,
                            duration: "1 year",
                            language: "C++",
                            software: "Unreal Engine 5",
                            role: "AI and UI programmer, producer",
                          ),
                          SizedBox(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                LinkButton(
                                  link:
                                      'https://store.steampowered.com/app/2666520/End_Of_Life/',
                                  platform: Utils.checkLink(
                                    'https://store.steampowered.com/app/2666520/End_Of_Life/',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                          bool isSmallScreen = constraints.maxWidth < 1200;

                          final textWidget = SizedBox(
                            width: double.infinity,
                            child: Text(
                              kDesc1EOL,
                              style: kBodyTextStyle,
                              textAlign: TextAlign.justify,
                            ),
                          );
                          final textWidgetFlex = Flexible(
                            child: Text(
                              kDesc1EOL,
                              style: kBodyTextStyle,
                              textAlign: TextAlign.justify,
                            ),
                          );

                          final mediaWidget = SizedBox(
                            width: 600,
                            child: YoutubeVideoEol(),
                          );

                          if (isSmallScreen) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textWidget,
                                SizedBox(height: 16),
                                mediaWidget,
                              ],
                            );
                          } else {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textWidgetFlex,
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
                          style: kHeader2Style,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          kDesc3EOL,
                          style: kBodyTextStyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      kBlankSeparator,
                      kBlankSeparator,
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "AI",
                          style: kHeader2Style,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          kDesc2EOL,
                          style: kBodyTextStyle,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        width: 1000,
                        child: ImageLegend(
                          path: 'assets/images/eolEditor.png',
                          legend:
                              "Screenshot from the Editor showing multi-gravity world and Navmesh",
                        ),
                      ),
                      kBlankSeparator,
                      kBlankSeparator,
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "UI",
                          style: kHeader2Style,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          kDesc4EOL,
                          style: kBodyTextStyle,
                          textAlign: TextAlign.justify,
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
