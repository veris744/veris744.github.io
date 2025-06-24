import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/widgets/bulletpoint.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("SKILLS", style: kHeader2Style, textAlign: TextAlign.center),
          kBlankSeparator,
          Wrap(
            spacing: 40,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              // Bulletpoint(point: "lkmewr weslhef  wrkfé"),
              // Bulletpoint(point: "lkmewr weslhef  wrkfé"),
              // Bulletpoint(point: "lkmewr weslhef  wrkfé"),
              // Bulletpoint(point: "lkmewr weslhef  wrkfé"),
            ],
          )
        ]
      ));
  }


}