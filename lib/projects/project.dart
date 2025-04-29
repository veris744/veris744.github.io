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

  Platforms _checkLink(String _link) {
    if (_link.contains('steam')) {
      return Platforms.steam;
    }
    if (_link.contains('itch')) {
      return Platforms.itch;
    }
    if (_link.contains('git')) {
      return Platforms.git;
    }
    return Platforms.git;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 450,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name, style: kHeader2Style, textAlign: TextAlign.center),
          kBlankSeparator,
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
          kBlankSeparator,
          SizedBox(
            height: 180,
            child: Image.network(imagePath, fit: BoxFit.contain),
          ),
          kBlankSeparator,
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
          kBlankSeparator,
          kBlankSeparator,
          Text(
            description,
            textAlign: TextAlign.left,
            style: TextStyle(color: kTextColor),
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
            children: [
              Flexible(
                child: Text("Platforms:", style: TextStyle(color: kTextColor)),
              ),
              kBlankSeparator,
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
          kBlankSeparator,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 10,
            children:
                links
                    .map(
                      (link) =>
                          LinkButton(link: link, platform: _checkLink(link)),
                    )
                    .toList(),
          ),
          kBlankSeparator,
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(pageName);
            },
            child: Text("See More", style: TextStyle(color: kTextColor)),
          ),
        ],
      ),
    );
  }
}
