import 'package:flutter/material.dart';

class CarouselWithButtons extends StatefulWidget {
  const CarouselWithButtons({super.key, required this.imagePaths});

  @override
  _CarouselWithButtonsState createState() => _CarouselWithButtonsState();

  final List<String> imagePaths;
}

class _CarouselWithButtonsState extends State<CarouselWithButtons> {
  late PageController _pageController = PageController();
  late List<String> _loopedImages;
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();

    _loopedImages = [
      widget.imagePaths.last,
      ...widget.imagePaths,
      widget.imagePaths.first,
    ];

    _pageController = PageController(initialPage: _currentPage);
  }

  void _onPageChanged(int index) {
    setState(() => _currentPage = index);

    if (index == 0) {
      Future.microtask(() {
        _pageController.jumpToPage(widget.imagePaths.length);
      });
    } else if (index == _loopedImages.length - 1) {
      Future.microtask(() {
        _pageController.jumpToPage(1);
      });
    }
  }

  void _next() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _previous() {
    _pageController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 600,
          width: 1200,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: _loopedImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(_loopedImages[index], fit: BoxFit.cover),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: _previous, icon: Icon(Icons.arrow_back)),
            Text(
              '${((_currentPage - 1) % widget.imagePaths.length) + 1} / ${widget.imagePaths.length}',
            ),
            IconButton(onPressed: _next, icon: Icon(Icons.arrow_forward)),
          ],
        ),
      ],
    );
  }
}
