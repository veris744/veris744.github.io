import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/widgets/bar_button.dart';

class TopBarProject extends StatelessWidget implements PreferredSizeWidget {
  const TopBarProject({super.key});

  void scrollToResume() async {
    const url =
        'https://drive.google.com/file/d/11lzGRtngqYo_lW2vefK_1m4BDB6igjUS/view?usp=sharing';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      automaticallyImplyLeading: false,
      title: Link(
        uri: Uri.parse('/'), // e.g. '/about'
        target: LinkTarget.self, // Opens in same tab
        builder: (context, followLink) {
          return TextButton(
            onPressed: followLink,
            child: Text(
              "Isabel de Vergara",
              style: TextStyle(color: kTextColor, fontSize: 26),
            ),
          );
        },
      ),
      elevation: 4,
      backgroundColor: Color.fromARGB(255, 58, 62, 108),
      actions: [
        Link(
          uri: Uri.parse('/'), // e.g. '/about'
          target: LinkTarget.self, // Opens in same tab
          builder: (context, followLink) {
            return Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: followLink,
                icon: Icon(Icons.home, color: kTextColor),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
