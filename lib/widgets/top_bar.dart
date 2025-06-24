import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/widgets/bar_button.dart';
import 'package:veris744/widgets/bar_button_drop.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback scrollToProjectsA;
  final VoidCallback scrollToProjectsP;
  final VoidCallback scrollToHihlighted;
  final VoidCallback scrollToSkills;
  final VoidCallback scrollToContact;

  const TopBar({
    super.key,
    required this.scrollToProjectsA,
    required this.scrollToProjectsP,
    required this.scrollToHihlighted,
    required this.scrollToSkills,
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
              style: TextStyle(color: kTextColor, fontSize: MediaQuery.of(context).size.width > 700 ? 26 : 18),
            ),
          );
        },
      ),
      elevation: 4,
      backgroundColor: Color.fromARGB(255, 58, 62, 108),
      actions:
          MediaQuery.of(context).size.width > 700
              ? [
                BarButton(scrollTo: scrollToResume, text: "Résumé"),
                BarButton(scrollTo: scrollToHihlighted, text: "Highlighted"),
                BarButtonDrop(
                  scrollTos: [scrollToProjectsA, scrollToProjectsP],
                  text: "Projects",
                  option: ["Academic", "Personal"],
                ),
                BarButton(scrollTo: scrollToSkills, text: "Skills"),
                BarButton(scrollTo: scrollToContact, text: "Contact"),
              ]
              : [
                BarButtonDrop(
                  option: [
                    "Résumé",
                    "Highlighted",
                    "Academic Projects",
                    "Personal Projects",
                    "Skills",
                    "Contact",
                  ],
                  text: "",
                  scrollTos: [
                    scrollToResume,
                    scrollToHihlighted,
                    scrollToProjectsA,
                    scrollToProjectsP,
                    scrollToSkills,
                    scrollToContact,
                  ],
                ),
              ],

      //[BarButton(scrollTo: scrollToResume, text: "Résumé")],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
