import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class UpButton extends StatefulWidget {
  final VoidCallback onPressed;
  
  const UpButton({super.key, required this.onPressed});
  
  @override
  UpButtonState createState() => UpButtonState();

}

class UpButtonState extends State<UpButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: widget.onPressed,
        foregroundColor: Colors.white,
        backgroundColor: kAccentColor,
        shape: CircleBorder(),
        child: const Icon(Icons.arrow_upward),
    );
  }
  
}