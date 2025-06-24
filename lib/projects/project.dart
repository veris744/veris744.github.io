import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';
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
      height: ((isMobile && award != '') ? 730 : 700),
      width: 450,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: isMobile ? 4 : 6,
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
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
              : (!isMobile ? SizedBox(height: 30) : SizedBox.shrink()),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity,
              maxWidth: double.infinity,
              minHeight: 0,
              maxHeight: 180,
            ),
            child: Image.network(imagePath, fit: BoxFit.contain),
          ),
          Center(
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              spacing: 8,
              runSpacing: 4,
              children: tags.map((tag) => Tag(name: tag)).toList(),
            ),
          ),
          kBlankSeparator,
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity, // Full width
              maxWidth: double.infinity,
              minHeight: 0,
            ),
            child: Text(
              description,
              textAlign: TextAlign.left,
              style: TextStyle(color: kTextSecond, fontSize: 16, height: 1.5),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:
                bulletPoints
                    .map(
                      (point) => Bulletpoint(
                        point: point,
                        style: TextStyle(
                          fontSize: 16.0,
                          height: 1.2,
                          color: kTextSecond,
                        ),
                      ),
                    )
                    .toList(),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Flexible(
                child: Text(
                  "Platforms:",
                  style: TextStyle(color: kTextSecond, fontSize: 16),
                ),
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
          Container(
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: kTitleColor),
            ),
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Link(
              uri: Uri.parse('/$pageName'),
              target: LinkTarget.self,
              builder: (context, followLink) {
                return TextButton(
                  onPressed: followLink,
                  child: Text(
                    "See More",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: double.infinity,
                maxWidth: double.infinity,
                minHeight: 0,
              ),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 8,
                runSpacing: 5,
                children:
                    links
                        .map(
                          (link) => LinkButton(
                            link: link,
                            platform: _checkLink(link),
                          ),
                        )
                        .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
