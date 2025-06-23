import 'package:flutter/material.dart';
import 'package:veris744/constants.dart';
import 'package:veris744/router_delegate.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {

  static Map<int, Color> color = {
    50: Color.fromRGBO(127, 4, 184, 0.1),
    100: Color.fromRGBO(127, 4, 184, .2),
    200: Color.fromRGBO(127, 4, 184, .3),
    300: Color.fromRGBO(127, 4, 184, .4),
    400: Color.fromRGBO(127, 4, 184, .5),
    500: Color.fromRGBO(127, 4, 184, .6),
    600: Color.fromRGBO(127, 4, 184, .7),
    700: Color.fromRGBO(127, 4, 184, .8),
    800: Color.fromRGBO(127, 4, 184, .9),
    900: Color.fromRGBO(127, 4, 184, 1),
  };

  final _routerDelegate = MyRouterDelegate();
  final _routeInformationParser = MyRouteInformationParser();

  MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: kBackgroundColor),
      debugShowCheckedModeBanner: false,
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
