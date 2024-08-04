import 'package:flutter/material.dart';
import 'package:transitions_bootcamp/navigation/router.dart';
import 'package:transitions_bootcamp/screens/screen1.dart';
import 'package:transitions_bootcamp/screens/screen2.dart';
import 'package:transitions_bootcamp/transitions/transitions.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case screen1:
        return TransitionExample.fadeRoute(Screen1());
      case screen2:
        return TransitionExample.sizeRoute(Screen2());
      case coursesScreen:
        return TransitionExample.fadeRoute(Screen1());
      case coursesDetailsScreen:
        return TransitionExample.fadeRoute(Screen1());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
          body: Center(
        child: Text('No se encontró la ventada'),
      ));
    });
  }
}
