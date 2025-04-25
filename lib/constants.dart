import 'package:flutter/material.dart';

// ================ Colors ================
const Color kPrimaryColor = Color.fromARGB(202, 99, 0, 238);
const Color kBackgroundColor = Color.fromARGB(255, 0, 0, 0);
const Color kTextColor = Color.fromARGB(255, 255, 255, 255);
const Color kAccentColor = Color.fromARGB(255, 206, 34, 169); // Pink

Map<String, Color> tags = {
  "Unity" : Color.fromARGB(201, 255, 81, 0),
  "C++" : Color.fromARGB(200, 0, 225, 255),
  "UE5" : Color.fromARGB(199, 255, 85, 178),
  "C#" : Color.fromARGB(200, 72, 255, 0)
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

SizedBox kBlankSeparator = SizedBox(
  height: 10.0,
);

// ================ Animation Durations ================
const Duration kHoverDuration = Duration(milliseconds: 200);
const Duration kPageTransitionDuration = Duration(milliseconds: 400);