import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:veris744/constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        children: [
          Text('Contact', style: Theme.of(context).textTheme.headlineMedium),
          kBlankSeparator,
          SizedBox(
            height: 75,
            child: Row(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  constraints: BoxConstraints.tight(Size.fromWidth(75)),
                  icon: SvgPicture.network("assets/icons/git.svg"),
                  onPressed: () async {
                    const url =
                        'https://github.com/veris744';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(
                        Uri.parse(url),
                      );
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                IconButton(
                  constraints: BoxConstraints.tight(Size.fromWidth(75)),
                  icon: SvgPicture.network("assets/icons/linkedin.svg"),
                  onPressed: () async {
                    const url =
                        'https://www.linkedin.com/in/isabel-de-vergara';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(
                        Uri.parse(url),
                      );
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                IconButton(
                  constraints: BoxConstraints.tight(Size.fromWidth(75)),
                  icon: SvgPicture.network("assets/icons/email.svg"),
                  onPressed: () async {
                    const url =
                        'mailto:isaverore@hotmail.com';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(
                        Uri.parse(url),
                      );
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
