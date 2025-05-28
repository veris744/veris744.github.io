import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:veris744/constants.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({super.key, required this.link, required this.platform});

  final String link;
  final Platforms platform;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(link),
      target: LinkTarget.blank,
      builder: (context, followLink) {
        return InkWell(
          onTap: followLink,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                platformsImages.containsKey(platform)
                    ? Image.network(
                      platformsImages[platform]!,
                      height: 24,
                      width: 24,
                    )
                    : SizedBox.shrink(),
                SizedBox(width: 8),
                Text(
                  platformsNames.containsKey(platform)
                      ? platformsNames[platform]!
                      : "Download",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 8),
                Icon(Icons.launch, color: Colors.white),
              ],
            ),
          ),
        );
      },
    );
  }
}
