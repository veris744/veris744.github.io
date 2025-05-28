import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/widgets/bar_button.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback scrollToProjects;
  final VoidCallback scrollToHihlighted;
  final VoidCallback scrollToSkills;
  final VoidCallback scrollToAbout;
  final VoidCallback scrollToContact;

  const TopBar({
    super.key,
    required this.scrollToProjects,
    required this.scrollToHihlighted,
    required this.scrollToSkills,
    required this.scrollToAbout,
    required this.scrollToContact,
  });

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
      automaticallyImplyLeading: false,
      title: 
          Link(
            uri: Uri.parse('/'), // e.g. '/about'
            target: LinkTarget.self, // Opens in same tab
            builder: (context, followLink) {
              return TextButton(
                onPressed: followLink,
                child: Text("Isabel de Vergara", style: TextStyle(color: kTextColor)),
              );
            },
          ),
      elevation: 4,
      backgroundColor: kPrimaryColor,
      actions:
          MediaQuery.of(context).size.width > 700
              ? [
                BarButton(scrollTo: scrollToResume, text: "Résumé"),
                BarButton(scrollTo: scrollToHihlighted, text: "Highlighted"),
                BarButton(scrollTo: scrollToProjects, text: "Projects"),
                BarButton(scrollTo: scrollToSkills, text: "Skills"),
                BarButton(scrollTo: scrollToAbout, text: "About"),
                BarButton(scrollTo: scrollToContact, text: "Contact"),
              ]
              : [BarButton(scrollTo: scrollToResume, text: "Résumé")],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
