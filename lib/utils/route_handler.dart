import 'package:flutter/material.dart';
import 'package:playstore_clone/pages/homepage.dart';
import 'package:playstore_clone/pages/search.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case Homepage.routeName:
        return MaterialPageRoute(builder: (context) => Homepage());
      case SearchBar.routeName:
        return MaterialPageRoute(builder: (context) => SearchBar());

      default:
      // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (context) => Homepage());
    }
  }
}