import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:veris744/sections/about.dart';
import 'package:veris744/sections/contact.dart';
import 'package:veris744/sections/copyright.dart';
import 'package:veris744/sections/highlighted.dart';
import 'package:veris744/sections/intro.dart';
import 'package:veris744/projects/projects.dart';
import 'package:veris744/sections/mini_about.dart';
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
  late ItemPositionsListener _itemPositionsListener;

  bool _showUpButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ItemScrollController();
    _itemPositionsListener = ItemPositionsListener.create();

    _itemPositionsListener.itemPositions.addListener(() {
      final positions = _itemPositionsListener.itemPositions.value;
      if (positions.isNotEmpty) {
        final minIndex = positions
            .map((e) => e.index)
            .reduce((a, b) => a < b ? a : b);
        setState(() {
          _showUpButton = minIndex > 0;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController = ItemScrollController();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.scrollTo(
      index: 0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

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
        scrollToHihlighted: () => _scrollToSection(2),
        scrollToProjects: () => _scrollToSection(3),
        scrollToSkills: () => _scrollToSection(4),
        scrollToAbout: () => _scrollToSection(5),
        scrollToContact: () => _scrollToSection(6),
      ),
      body: Stack(
        children: [
          ScrollablePositionedList.builder(
            itemScrollController: _scrollController,
            itemPositionsListener: _itemPositionsListener,
            itemCount: 8,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return IntroSection();
                case 1:
                  return MiniAbout();
                case 2:
                  return HighlightedSection();
                case 3:
                  return ProjectsSection();
                case 4:
                  return SkillsSection();
                case 6:
                  return ContactSection();
                case 7:
                  return Copyright();
                default:
                  return SizedBox.shrink();
              }
            },
          ),
          if (_showUpButton)
            Positioned(
              bottom: 20,
              right: 20,
              child: UpButton(onPressed: _scrollToTop),
            ),
        ],
      ),
    );
  }
}
