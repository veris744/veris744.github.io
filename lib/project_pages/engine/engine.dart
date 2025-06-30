import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/image_legend.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/sections/video.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bulletpoint.dart';
import 'package:veris744/widgets/columns_layout.dart';
import 'package:veris744/widgets/header.dart';
import 'package:veris744/widgets/top_bar_project.dart';
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
    // double screenWidth = MediaQuery.of(context).size.width;
    // double widgetWidth = screenWidth < 600 ? (screenWidth - 10) : 600;

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
                  Header(text: "Game Engine"),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: SizedBox(
                      width: 1400,
                      child: Column(
                        spacing: 15,
                        children: [
                          Status(
                            isDone: false,
                            duration: "",
                            language: "C++, glsl",
                            software: "CMake, OpenGL",
                            role: "Solo project",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              LinkButton(
                                link: 'https://github.com/veris744/WHYNOT',
                                platform: Utils.checkLink(
                                  'https://github.com/veris744/WHYNOT',
                                ),
                              ),
                            ],
                          ),
                          ColumnsLayout(
                            text: Text(kDescEng1, style: kBodyTextStyle),
                            imageWidget: SizedBox(
                              width: 600,
                              height: 350,
                              child: Video(
                                videoAssetPath: 'assets/videos/enginegame.mp4',
                                imagePath: 'assets/images/editorMenu.png',
                              ),
                            ),
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            title: Text(
                              "Graphics",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngGraphics,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            title: Text(
                              "Entities and Components System",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngECS,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            title: Text(
                              "UI system",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngUI,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            title: Text(
                              "Scene Loading and Editor Tools",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngRefl,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
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
                              kBlankSeparator,
                            ],
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            title: Text(
                              "Physics System",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngPhysics,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            title: Text(
                              "Input and Player Control",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngPlayer,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            expandedAlignment: Alignment.topLeft,
                            title: Text(
                              "Debugging Tools",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngDebug,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
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
                              kBlankSeparator,
                            ],
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            expandedAlignment: Alignment.centerLeft,
                            title: Text(
                              "Audio",
                              style: kHeader2Style,
                              textAlign: TextAlign.justify,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngAudio,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            expandedAlignment: Alignment.centerLeft,
                            title: Text(
                              "Build and Delivery",
                              style: kHeader2Style,
                              textAlign: TextAlign.justify,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kEngDelivery,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparator,
                          kBlankSeparator,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            title: Text(
                              "Upcoming features",
                              style: kHeader2Style,
                              textAlign: TextAlign.justify,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ...kEngUpcoming.map(
                                      (point) => Bulletpoint(
                                        point: point,
                                        style: kBodyTextStyleDark,
                                      ),
                                    ),
                                  ],
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
        ],
      ),
    );
  }
}
