import 'package:flutter/material.dart';

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
        "Status: ${isDone ? "Finished" : "In Progress"}\n${isDone ? "Duration:$duration\n" : ""}Language: $language\nSoftware: $software\nRoles: $role";

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 195, 197, 199),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          height: 2,
        ),
      ),
    );
  }
}
