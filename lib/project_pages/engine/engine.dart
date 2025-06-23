import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/eol/youtube_video_eol.dart';
import 'package:veris744/project_pages/image_legend.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/sections/video.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bold_bulletpoint.dart';
import 'package:veris744/widgets/bulletpoint.dart';
import 'package:veris744/widgets/top_bar.dart';
import 'package:veris744/widgets/up_button.dart';

class Engine extends StatefulWidget {
  const Engine({super.key});

  @override
  State<Engine> createState() => _EngineState();
}

class _EngineState extends State<Engine> {
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
    double screenWidth = MediaQuery.of(context).size.width;
    double widgetWidth = screenWidth < 600 ? (screenWidth - 10) : 600;

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
                      Text("End Of Life", style: kHeader1Style),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: [
                          Status(
                            isDone: false,
                            duration: "",
                            language: "C++, glsl",
                            software: "CMake, OpenGL",
                            role: "Solo project",
                          ),
                          SizedBox(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                LinkButton(
                                  link: 'https://github.com/veris744/WHYNOT',
                                  platform: Utils.checkLink(
                                    'https://github.com/veris744/WHYNOT',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          bool isSmallScreen = constraints.maxWidth < 1200;

                          final textWidget = SizedBox(
                            width: double.infinity,
                            child: Text(
                              kDescEng1,
                              style: TextStyle(fontSize: 16),
                            ),
                          );
                          final textWidgetFlex = Flexible(
                            child: Text(
                              kDescEng1,
                              style: TextStyle(fontSize: 16),
                            ),
                          );

                          final mediaWidget = SizedBox(
                            width: 600,
                            height: 300,
                            child: Video(
                              videoAssetPath: 'assets/videos/enginegame.mp4',
                              imagePath: 'assets/images/editorMenu.png',
                            ),
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
                          "Graphics and Model Loading",
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
                          kEngGraphics,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Entities and Components System",
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
                          kEngECS,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "UI system",
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
                          kEngUI,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Scene Loading and Editor Tools",
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
                          kEngRefl,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 600,
                        height: 350,
                        child: Video(
                              videoAssetPath: 'assets/videos/editor.mp4',
                              imagePath: 'assets/images/editorMenu.png',
                            ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Physics System",
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
                          kEngPhysics,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Input and Player Control",
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
                          kEngPlayer,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Debugging Tools",
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
                          kEngDebug,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: 600,
                        child: ImageLegend(
                          path: 'assets/images/debugengine.png',
                          legend:
                              "Screenshot showing debugging options on transforms",
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Build and Delivery",
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
                          kEngDelivery,
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Upcoming features",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...kEngUpcoming.map(
                            (point) => Bulletpoint(
                              point: point,
                              textColor: Colors.black,
                            ),
                          ),
                        ],
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
