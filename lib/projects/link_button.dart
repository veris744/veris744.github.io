import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:veris744/constants.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({super.key, required this.link, required this.platform});

  final String link;
  final Platforms platform;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        if (await canLaunchUrl(Uri.parse(link))) {
          await launchUrl(Uri.parse(link));
        } else {
          throw 'Could not launch $link';
        }
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          platformsImages.containsKey(platform)
              ? Image.asset(platformsImages[platform]!, height: 24, width: 24)
              : SizedBox.shrink(),
          SizedBox(width: 8),
          Text(
            platformsNames.containsKey(platform) ? platformsNames[platform]! : "Download",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 8),
          Icon(Icons.launch, color: Colors.white),
        ],
      ),
    );
  }
}
