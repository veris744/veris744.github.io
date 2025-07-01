import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:url_launcher/link.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/image_legend.dart';
import 'package:veris744/project_pages/status.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/project_pages/eol/youtube_video_eol.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/texts.dart';
import 'package:veris744/widgets/bold_bulletpoint.dart';
import 'package:veris744/widgets/columns_layout.dart';
import 'package:veris744/widgets/header.dart';
import 'package:veris744/widgets/top_bar_project.dart';
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
                  Header(text: "End Of Life"),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(0),
                    child: Container(
                      padding: EdgeInsets.all(30),
                      width: 1400,
                      child: Column(
                        children: [
                          kBlankSeparator,
                          Status(
                            isDone: true,
                            duration: "1 year",
                            language: "C++",
                            software: "Unreal Engine 5",
                            role: "AI and UI programmer, producer",
                          ),
                          kBlankSeparator,
                          kBlankSeparator,
                          Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(
                                Icons.workspace_premium_outlined,
                                size: 100,
                                color: Colors.amber,
                              ),

                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      awardEOL,
                                      style: TextStyle(
                                        color: kTextSecond,
                                        fontSize: 16,
                                        height: 1.5,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Link(
                                      uri: Uri.parse(
                                        'https://blog.es.playstation.com/2023/11/28/conoce-los-finalistas-a-la-10a-edicion-de-los-premios-iokool-playstation-talents/',
                                      ),
                                      target: LinkTarget.blank,
                                      builder: (context, followLink) {
                                        return InkWell(
                                          onTap: followLink,
                                          child: Text(
                                            'Play Station Talents Finalists 2023',
                                            style: TextStyle(
                                              color: const Color.fromARGB(
                                                255,
                                                9,
                                                91,
                                                158,
                                              ),
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          kBlankSeparator,
                          kBlankSeparator,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 10,
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
                          kBlankSeparatorBig,
                          ColumnsLayout(
                            text: Text(
                              kDesc1EOL,
                              style: kBodyTextStyle,
                              textAlign: TextAlign.justify,
                            ),
                            imageWidget: SizedBox(
                              width: 600,
                              child: YoutubeVideoEol(),
                            ),
                          ),
                          kBlankSeparatorBig,
                          kBlankSeparatorBig,
                          Text(kDesc1_5EOL, style: kBodyTextStyle),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Link(
                              uri: Uri.parse(
                                'https://vandal.elespanol.com/noticia/1350762654/un-mundo-fragmentado-define-la-jugabilidad-del-shooter-end-of-life/',
                              ),
                              target: LinkTarget.blank,
                              builder: (context, followLink) {
                                return InkWell(
                                  onTap: followLink,
                                  child: Text(
                                    'https://vandal.elespanol.com/noticia/1350762654/un-mundo-fragmentado-define-la-jugabilidad-del-shooter-end-of-life/',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20.0,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          kBlankSeparatorBig,
                          ExpansionTile(
                            backgroundColor: kPrimaryColor,
                            collapsedBackgroundColor: kPrimaryColor,
                            title: Text(
                              "Team Management",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kDesc4EOL,
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
                              "AI",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        kDesc2EOL,
                                        style: kBodyTextStyleDark,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    kBlankSeparator,
                                    ...kAIEOL.map(
                                      (point) => BoldBulletpoint(
                                        point: point[1],
                                        title: point[0],
                                        style: kBodyTextStyleDark,
                                        styleBold: kBodyBoldTextStyleDark,
                                      ),
                                    ),
                                    kBlankSeparator,
                                    SizedBox(
                                      width: 800,
                                      child: ImageLegend(
                                        path: 'assets/images/eolEditor.png',
                                        legend:
                                            "Screenshot from the Editor showing multi-gravity world and custom Navmesh",
                                      ),
                                    ),
                                  ],
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
                              "UI",
                              style: kHeader2Style,
                              textAlign: TextAlign.left,
                            ),
                            trailing: Icon(Icons.arrow_drop_down),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  kDesc3EOL,
                                  style: kBodyTextStyleDark,
                                  textAlign: TextAlign.justify,
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
