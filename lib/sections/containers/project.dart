import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class Project extends StatelessWidget {
  const Project({
    super.key,
    required this.name,
    required this.imagePath,
    required this.tags,
    required this.description, 
    required this.navigateToProject,
  });

  final String name;
  final String imagePath;
  final List<String> tags;
  final String description;
  final VoidCallback navigateToProject;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 150,
      decoration: BoxDecoration(color: kPrimaryColor),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(name),
          Text(imagePath),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Wrap(
              spacing: 4, // horizontal spacing between tags
              runSpacing: 4, // vertical spacing between lines
              children: tags.map((tag) => _buildTag(tag)).toList(),
            ),
          ),
          Text(description),

          TextButton(
            onPressed: navigateToProject,            
            child: Text(
              "See More",
              style: TextStyle(color: kTextColor),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build individual tag widgets
  Widget _buildTag(String tagText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        tagText,
        style: TextStyle(fontSize: 12, color: Colors.blue[800]),
      ),
    );
  }
}
