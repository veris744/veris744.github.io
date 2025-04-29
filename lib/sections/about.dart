import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/texts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 800;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxWidth: double.infinity,
        minHeight: 0,
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: isWideScreen ? 150 : 10,
          vertical: 20,
        ),
        color: Colors.grey,
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isMobile = constraints.maxWidth < 800;

            return isMobile
                ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 400,
                      child: Image.network(
                        "assets/images/img.JPG",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      kAboutText,
                      style: TextStyle(color: kTextColor, fontSize: 18),
                    ),
                  ],
                )
                : Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Image.network(
                        "assets/images/img.JPG",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(width: 40),
                    Expanded(
                      child: Text(
                        kAboutText,
                        style: TextStyle(color: kTextColor, fontSize: 18),
                      ),
                    ),
                  ],
                );
          },
        ),
      ),
    );
  }
}
