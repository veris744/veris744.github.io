import 'package:flutter/material.dart';
import 'package:veris744/texts.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxWidth: double.infinity,
        minHeight: 0,
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
        color: Colors.grey,
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isMobile = constraints.maxWidth < 600;

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
                    SizedBox(height: 10),
                    Text(kAboutText),
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
                    SizedBox(width: 10),
                    Expanded(child: Text(kAboutText)),
                  ],
                );
          },
        ),
      ),
    );
  }
}
