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
const Color kPrimaryColor = Color.fromARGB(202, 99, 0, 238);
const Color kBackgroundColor = Color.fromARGB(255, 0, 0, 0);
const Color kTextColor = Color.fromARGB(255, 255, 255, 255);
const Color kAccentColor = Color.fromARGB(255, 206, 34, 169); // Pink

Map<String, Color> tags = {
  "Unity": Color.fromARGB(201, 255, 81, 0),
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

TextStyle kHeader2Style = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w600,
  color: kTextColor,
);

TextStyle kBodyTextStyle = TextStyle(
  fontSize: 16.0,
  height: 1.5,
  color: kTextColor,
);

// ================ Spacing/Padding ================
const double kDefaultPadding = 16.0;
const double kSectionSpacing = 40.0;

SizedBox kBlankSeparator = SizedBox(height: 10.0);

// ================ Animation Durations ================
const Duration kHoverDuration = Duration(milliseconds: 200);
const Duration kPageTransitionDuration = Duration(milliseconds: 400);
