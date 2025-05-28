import 'package:flutter/material.dart';
import 'package:veris744/home_content.dart';
import 'package:veris744/project_pages/cofrade/cofrade.dart';
import 'package:veris744/project_pages/engine/engine.dart';
import 'package:veris744/project_pages/eol/end_of_life.dart';
import 'package:veris744/project_pages/flocking/flocking.dart';
import 'package:veris744/project_pages/ntr/nowhere_to_run.dart';
import 'package:veris744/project_pages/smu/social_matchup.dart';

class MyRouterDelegate extends RouterDelegate<RouteSettings>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RouteSettings> {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  RouteSettings _current = RouteSettings(name: '/');

  @override
  RouteSettings? get currentConfiguration => _current;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (_current.name) {
      case '/EndOfLife':
        page = EndOfLife();
        break;
      case '/NowhereToRun':
        page = NowhereToRun();
        break;
      case '/SocialMatchUp':
        page = SocialMatchUp();
        break;
      case '/Engine':
        page = Engine();
        break;
      case '/Flocking':
        page = Flocking();
        break;
      case '/Cofrade':
        page = Cofrade();
        break;
      case '/':
      default:
        page = HomeContent();
        break;
    }

    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(child: page),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(RouteSettings configuration) async {
    _current = configuration;
    notifyListeners();
  }
}

class MyRouteInformationParser extends RouteInformationParser<RouteSettings> {
  @override
  Future<RouteSettings> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');
    return RouteSettings(name: uri.path);
  }

  @override
  RouteInformation? restoreRouteInformation(RouteSettings configuration) {
    return RouteInformation(location: configuration.name);
  }
}
