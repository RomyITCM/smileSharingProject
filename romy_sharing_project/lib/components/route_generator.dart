import 'package:flutter/material.dart';

import 'constants.dart';

class RouteGenerator{
  static Route<dynamic> routeGenerator(RouteSettings settings){
    switch (settings.name){
      case kPathLanding:
        return  _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: const Text("Error"),),
        body: const Center(child: Text("Error Page")),
      );
    });
  }
}