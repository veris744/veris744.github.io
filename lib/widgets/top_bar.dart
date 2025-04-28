import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                BarButton(scrollTo: scrollToHihlighted, text: "Highlighted"),
                BarButton(scrollTo: scrollToProjects, text: "Projects"),
                BarButton(scrollTo: scrollToSkills, text: "Skills"),
                BarButton(scrollTo: scrollToAbout, text: "About"),
                BarButton(scrollTo: scrollToContact, text: "Contact"),
              ]
              : [],
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
