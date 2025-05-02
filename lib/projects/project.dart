import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/projects/link_button.dart';
import 'package:veris744/widgets/bulletpoint.dart';
import 'package:veris744/widgets/tag.dart';

class Project extends StatelessWidget {
  const Project({
    super.key,
    required this.name,
    required this.imagePath,
    required this.tags,
    required this.description,
    required this.pageName,
    required this.bulletPoints,
    required this.links,
    required this.platforms,
    this.award = '',
  });

  final String name;
  final String imagePath;
  final List<String> tags;
  final String description;
  final List<String> bulletPoints;
  final String pageName;
  final List<String> links;
  final List<Platforms> platforms;
  final String award;

  Platforms _checkLink(String link) {
    if (link.contains('steam')) {
      return Platforms.steam;
    }
    if (link.contains('itch')) {
      return Platforms.itch;
    }
    if (link.contains('git')) {
      if (link.contains('releases')) {
        return Platforms.none;
      }
      return Platforms.git;
    }
    return Platforms.none;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 800;

    return Container(
      height: isMobile ? 800 : 700,
      width: 450,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name, style: kHeader2Style, textAlign: TextAlign.center),
          (award != '')
              ? Container(
                width: 300,
                height: 30,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  award,
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              )
              : SizedBox(height: 30),
          SizedBox(
            height: 180,
            child: Image.network(imagePath, fit: BoxFit.contain),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: tags.map((tag) => Tag(name: tag)).toList(),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity, // Full width
              maxWidth: double.infinity,
              minHeight: 0,
            ),
            child: Text(
              description,
              textAlign: TextAlign.left,
              style: TextStyle(color: kTextColor),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:
                bulletPoints.map((point) => Bulletpoint(point: point)).toList(),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Flexible(
                child: Text("Platforms:", style: TextStyle(color: kTextColor)),
              ),
              ...platforms.map(
                (platform) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: SvgPicture.network(
                      platformsIcons[platform]!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          kBlankSeparator,
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity,
              maxWidth: double.infinity,
              minHeight: 0,
            ),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 8,
              runSpacing: 5,
              children:
                  links
                      .map(
                        (link) =>
                            LinkButton(link: link, platform: _checkLink(link)),
                      )
                      .toList(),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/$pageName');
            },
            child: Text("See More", style: TextStyle(color: kTextColor)),
          ),
        ],
      ),
    );
  }
}
