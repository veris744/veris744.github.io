import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/project_pages/project_content.dart';
import 'package:veris744/sections/about.dart';
import 'package:veris744/sections/contact.dart';
import 'package:veris744/sections/highlighted.dart';
import 'package:veris744/sections/intro.dart';
import 'package:veris744/sections/projects.dart';
import 'package:veris744/sections/skills.dart';
import 'package:veris744/widgets/top_bar.dart';
import 'package:veris744/widgets/up_button.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final ScrollController _scrollController = ScrollController();
  bool _showUpButton = false;

  final GlobalKey _introKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _highlightedKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    final bool shouldShow = _scrollController.offset > 100;
    if (shouldShow != _showUpButton) {
      setState(() {
        _showUpButton = shouldShow;
      });
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/projectA': (context) => ProjectAPage(), // Case-sensitive!
      },
      home: Scaffold(
        appBar: TopBar(
          scrollToHihlighted: () => _scrollToSection(_highlightedKey),
          scrollToProjects: () => _scrollToSection(_projectsKey),
          scrollToSkills: () => _scrollToSection(_skillsKey),
          scrollToAbout: () => _scrollToSection(_aboutKey),
          scrollToContact: () => _scrollToSection(_contactKey),
        ),
        body: Stack(
          children: [
            ListView(
              controller: _scrollController,
              children: [
                const IntroSection(),
                HighlightedSection(key: _highlightedKey),
                ProjectsSection(key: _projectsKey),
                SkillsSection(key: _skillsKey),
                AboutSection(key: _aboutKey),
                ContactSection(key: _contactKey),
              ],
            ),
            if (_showUpButton)
              Positioned(
                bottom: 20,
                right: 20,
                child: UpButton(onPressed: _scrollToTop),
              ),
          ],
        ),
      ),
    );
  }
}
