import 'package:flutter/material.dart';
import 'package:veris744/home_content.dart';
import 'package:veris744/project_pages/cofrade/cofrade.dart';
import 'package:veris744/project_pages/eol/end_of_life.dart';
import 'package:veris744/project_pages/flocking/flocking.dart';
import 'package:veris744/project_pages/ntr/nowhere_to_run.dart';
import 'package:veris744/project_pages/project_content.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:veris744/project_pages/smu/social_matchup.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeContent(),
      routes: {
        '/EndOfLife': (context) => EndOfLife(),
        '/NowhereToRun': (context) => NowhereToRun(),
        '/SocialMatchUp': (context) => SocialMatchUp(),
        '/Engine': (context) => ProjectAPage(),
        '/Flocking': (context) => Flocking(),
        '/Cofrade': (context) => Cofrade(),
      },
    );
  }
}


// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('My Portfolio')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('Hello World!', style: TextStyle(fontSize: 24)),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/projectA');
//               },
//               child: const Text('View Project A'),
//             ),
//             UpButton()
//           ],
//         ),
//       ),
//     );
//   }
// }

