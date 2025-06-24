import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class Status extends StatelessWidget {
  const Status({
    super.key,
    required this.isDone,
    required this.duration,
    required this.language,
    required this.software,
    required this.role,
  });

  final bool isDone;
  final String duration;
  final String language;
  final String software;
  final String role;

  @override
  Widget build(BuildContext context) {
    final String text =
        "Status: ${isDone ? "Finished" : "In Progress"}\n${isDone ? "Duration: $duration\n" : ""}Language: $language\nSoftware: $software\nRoles: $role";

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 160,
      child: IntrinsicWidth(
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: kTextSecond,
              fontSize: 16,
              height: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
