import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class BarButtonDrop extends StatefulWidget {
  const BarButtonDrop({
    super.key,
    required this.scrollTos,
    required this.text,
    required this.option,
  });

  final String text;
  final List<String> option;
  final List<VoidCallback> scrollTos;

  @override
  State<BarButtonDrop> createState() => _BarButtonDropState();
}

class _BarButtonDropState extends State<BarButtonDrop> {
  bool _isHovered = false;

  static const String closeValue = "__close__"; // sentinel value

  void _resetHover() {
    if (_isHovered) {
      setState(() {
        _isHovered = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: kToolbarHeight,
        color: _isHovered ? kAccentColor : Colors.transparent,
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            focusColor: Colors.transparent,
            dropdownColor: kAccentColor,
            isDense: true,
            isExpanded: false,
            value: null,
            hint: GestureDetector(
              onTap: _resetHover, // reset hover on tap to open dropdown
              child: Text(
                widget.text,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            icon: Icon(Icons.arrow_drop_down, color: kTextColor),
            style: TextStyle(color: kTextColor, fontSize: 26),
            items: [
              DropdownMenuItem<String>(
                enabled: false,
                value: closeValue,
                child: Text(
                  "Projects",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...List.generate(widget.option.length, (index) {
                return DropdownMenuItem<String>(
                  value: widget.option[index],
                  child: Text(widget.option[index]),
                );
              }),
            ],
            onChanged: (value) {
              _resetHover(); // reset hover after selection or close
              if (value == closeValue) return; // do nothing
              final index = widget.option.indexOf(value!);
              if (index != -1) widget.scrollTos[index]();
            },
          ),
        ),
      ),
    );
  }
}
