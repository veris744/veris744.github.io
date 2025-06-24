import 'package:flutter/material.dart';

class Utils {
  static Platforms checkLink(String link) {
    if (link.contains('steam')) {
      return Platforms.steam;
    }
    if (link.contains('itch')) {
      return Platforms.itch;
    }
    if (link.contains('git')) {
      if (link.contains('releases')) {
        return Platforms.none;
      }
      return Platforms.git;
    }
    return Platforms.none;
  }
}

// ================ Colors ================
const Color kPrimaryColor = Color.fromARGB(255, 149, 155, 181);
const Color kBackgroundColor = Color.fromARGB(255, 10, 17, 35);
const Color kTextColor = Color.fromARGB(255, 230, 231, 196);
const Color kTextSecond = Color.fromARGB(255, 19, 20, 39);
const Color kAccentColor = Color.fromARGB(255, 131, 135, 195); 
const Color kTitleColor = Color.fromARGB(255, 58, 62, 108); 
const Color kGreyColor = Color.fromARGB(255, 138, 140, 172); 

Map<String, Color> tags = {
  "Unity": Color.fromARGB(200, 158, 145, 139),
  "C++": Color.fromARGB(200, 0, 225, 255),
  "UE5": Color.fromARGB(199, 255, 85, 178),
  "C#": Color.fromARGB(200, 72, 255, 0),
  "AI": Color.fromARGB(199, 0, 255, 213),
  "UI": Color.fromARGB(199, 255, 0, 0),
  "VR": Color.fromARGB(199, 238, 255, 0),
};

enum Platforms { windows, oculus, steam, itch, android, vr, git, none }

Map<Platforms, String> platformsIcons = {
  Platforms.windows: 'assets/icons/windows.svg',
  Platforms.oculus: 'assets/icons/oculus.svg',
  Platforms.steam: 'assets/icons/steam.svg',
  Platforms.itch: 'assets/icons/itch.svg',
  Platforms.android: 'assets/icons/android.svg',
  Platforms.vr: 'assets/icons/vr.svg',
  Platforms.git: 'assets/icons/github.svg',
};

Map<Platforms, String> platformsImages = {
  Platforms.windows: 'assets/images/windows.png',
  Platforms.oculus: 'assets/images/oculus.png',
  Platforms.steam: 'assets/images/steam.png',
  Platforms.itch: 'assets/images/itch.png',
  Platforms.android: 'assets/images/android.png',
  Platforms.vr: 'assets/images/vr.png',
  Platforms.git: 'assets/images/github.png',
};

Map<Platforms, String> platformsNames = {
  Platforms.windows: 'Windows',
  Platforms.oculus: 'Oculus',
  Platforms.steam: 'Steam',
  Platforms.itch: 'Itch.io',
  Platforms.android: 'Android',
  Platforms.vr: 'VR',
  Platforms.git: 'GitHub',
};

// ================ Text Styles ================
TextStyle kHeader1Style = TextStyle(
  fontSize: 36.0,
  fontWeight: FontWeight.bold,
  color: kTextColor,
);
TextStyle kHeaderSubtitle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w600,
  color: kTextColor,
);

TextStyle kHeader2Style = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w600,
  color: kTextSecond,
);

TextStyle kBodyTextStyle = TextStyle(
  fontSize: 20.0,
  height: 1.5,
  color: kTextColor,
);
TextStyle kBodyTextStyleDark = TextStyle(
  fontSize: 20.0,
  height: 1.5,
  color: kBackgroundColor,
);
TextStyle kBodyBoldTextStyle = TextStyle(
  fontSize: 20.0,
  height: 1.5,
  color: kTextColor,
  fontWeight: FontWeight.bold,
  
);

// ================ Spacing/Padding ================
const double kDefaultPadding = 16.0;
const double kSectionSpacing = 40.0;

SizedBox kBlankSeparator = SizedBox(height: 10.0);
SizedBox kBlankSeparatorBig = SizedBox(height: 30,);

// ================ Animation Durations ================
const Duration kHoverDuration = Duration(milliseconds: 200);
const Duration kPageTransitionDuration = Duration(milliseconds: 400);

const double kHorizontalPaddingMob = 10;
const double kHorizontalPadding = 280;