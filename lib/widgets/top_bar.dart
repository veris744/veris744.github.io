import 'package:flutter/material.dart';
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
      title: Builder(
        builder:
            (navContext) => TextButton(
              onPressed: () {
                Navigator.of(navContext).pushNamed('/');
              },
              child: Text(
                'Isabel de Vergara',
                style: TextStyle(color: kTextColor),
              ),
            ),
      ),
      elevation: 4,
      backgroundColor: kPrimaryColor,
      actions:
          MediaQuery.of(context).size.width > 600
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

  void debugRoutes(BuildContext context) {
    // 1. Check MaterialApp routes
    final materialApp = context.findAncestorWidgetOfExactType<MaterialApp>();
    print('=== MaterialApp Routes ===');
    materialApp?.routes?.forEach((key, _) => print('- $key'));

    // 2. Check current route stack
    print('\n=== Current Route Stack ===');
    Navigator.of(context).widget.pages.forEach((page) {
      print('- ${page.name ?? 'Unnamed page'}');
    });

    // 3. Check current route
    print('\n=== Current Route ===');
    print(ModalRoute.of(context)?.settings.name ?? 'Unnamed route');
  }
}
