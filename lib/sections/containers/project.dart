import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/widgets/bulletpoint.dart';
import 'package:veris744/widgets/tag.dart';

class Project extends StatelessWidget {
  const Project({
    super.key,
    required this.name,
    required this.imagePath,
    required this.tags,
    required this.description,
    required this.navigateToProject,
    required this.bulletPoints,
  });

  final String name;
  final String imagePath;
  final List<String> tags;
  final String description;
  final List<String> bulletPoints;
  final VoidCallback navigateToProject;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 300,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(name, style: kHeader2Style, textAlign: TextAlign.center),
          kBlankSeparator,
          Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: double.infinity,
                maxWidth: double.infinity,
                minHeight: 0,
              ),
              child: Image.network(
                imagePath,
                fit:
                    BoxFit
                        .cover,
              ),
            ),
          ),
          kBlankSeparator,
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Wrap(
                spacing: 4,
                runSpacing: 4,
                children: tags.map((tag) => Tag(name: tag)).toList(),
              ),
            ),
          ),
          kBlankSeparator,
          kBlankSeparator,
          Text(description, textAlign: TextAlign.left),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:
                bulletPoints.map((point) => Bulletpoint(point: point)).toList(),
          ),
          Spacer(),
          TextButton(
            onPressed: navigateToProject,
            child: Text("See More", style: TextStyle(color: kTextColor)),
          ),
        ],
      ),
    );
  }
}
