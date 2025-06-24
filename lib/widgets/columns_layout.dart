import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';

class ColumnsLayout extends StatelessWidget {
  ColumnsLayout({super.key, required this.text, required this.imageWidget});

  Widget text;
  Widget imageWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isSmallScreen = constraints.maxWidth < 1200;

        final textWidget = SizedBox(
          width: double.infinity,
          child: text
        );
        final textWidgetFlex = Flexible(
          child: text
        );

        final mediaWidget = imageWidget;

        if (isSmallScreen) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [textWidget, SizedBox(height: 16), mediaWidget],
          );
        } else {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [textWidgetFlex, SizedBox(width: 20), mediaWidget],
          );
        }
      },
    );
  }
}
