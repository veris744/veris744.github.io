import 'package:flutter/material.dart';
import 'package:veris744/home_content.dart';
import 'package:veris744/project_pages/eol/end_of_life.dart';
import 'package:veris744/project_pages/project_content.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

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
        '/NowhereToRun': (context) => ProjectAPage(),
        '/SocialMatchUp': (context) => ProjectAPage(),
        '/Engine': (context) => ProjectAPage(),
        '/Flocking': (context) => ProjectAPage(),
        '/Cofrade': (context) => ProjectAPage(),
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

