import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:veris744/project_pages/project_content.dart';
import 'package:veris744/sections/about.dart';
import 'package:veris744/sections/contact.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/sections/highlighted.dart';
import 'package:veris744/sections/intro.dart';
import 'package:veris744/projects/projects.dart';
import 'package:veris744/skills/skills.dart';
import 'package:veris744/widgets/top_bar.dart';
import 'package:veris744/widgets/up_button.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  late ItemScrollController _scrollController;

  //bool _showUpButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ItemScrollController();
  }

  @override
  void dispose() {
    _scrollController = ItemScrollController();
    super.dispose();
  }

  // void _handleScroll() {
  //   final bool shouldShow = _scrollController.offset > 100;
  //   if (shouldShow != _showUpButton) {
  //     setState(() {
  //       _showUpButton = shouldShow;
  //     });
  //   }
  // }

  // void _scrollToTop() {
  //   _scrollController.animateTo(
  //     0,
  //     duration: const Duration(milliseconds: 500),
  //     curve: Curves.easeInOut,
  //   );
  // }

  void _scrollToSection(int index) {
    _scrollController.scrollTo(
      index: index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        scrollToHihlighted: () => _scrollToSection(1),
        scrollToProjects: () => _scrollToSection(2),
        scrollToSkills: () => _scrollToSection(3),
        scrollToAbout: () => _scrollToSection(4),
        scrollToContact: () => _scrollToSection(5),
      ),
      body: ScrollablePositionedList.builder(
        itemScrollController: _scrollController,
        itemCount: 7,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return IntroSection();
            case 1:
              return HighlightedSection();
            case 2:
              return ProjectsSection();
            case 3:
              return SkillsSection();
            case 4:
              return AboutSection();
            case 5:
              return ContactSection();
            case 6:
              return Copyright();
            default:
              return SizedBox.shrink();
          }
        },
        // children: [
        //   ListView(
        //     controller: _scrollController,
        //     children: [
        //       const IntroSection(),
        //       HighlightedSection(key: _highlightedKey),
        //       ProjectsSection(key: _projectsKey),
        //       SkillsSection(key: _skillsKey),
        //       AboutSection(key: _aboutKey),
        //       ContactSection(key: _contactKey),
        //       Copyright(),
        //     ],
        //   ),
        //   if (_showUpButton)
        //     Positioned(
        //       bottom: 20,
        //       right: 20,
        //       child: UpButton(onPressed: _scrollToTop),
        //     ),
        // ],
      ),
    );
  }
}
