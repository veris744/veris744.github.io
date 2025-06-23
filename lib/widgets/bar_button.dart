import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class BarButton extends StatefulWidget {
  const BarButton({super.key, required this.scrollTo, required this.text});

  final String text;
  final VoidCallback scrollTo;

  @override
  State<BarButton> createState() => _BarButtonState();
}

class _BarButtonState extends State<BarButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: double.infinity,
        maxHeight: double.infinity,
        minWidth: 0,
      ),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Container(
          decoration: BoxDecoration(
            color: _isHovered ? kAccentColor : Colors.transparent,
          ),
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextButton(
            onPressed: () {
              widget.scrollTo();
            },
            child: Text(widget.text, style: TextStyle(color: kTextColor, fontSize: 26)),
          ),
        ),
      ),
    );
  }
}
