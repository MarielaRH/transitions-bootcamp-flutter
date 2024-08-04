import 'package:flutter/material.dart';

class TransitionExample {
  static fadeRoute(screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return screen;
      },
      transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  static slideRoute(screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return screen;
      },
      transitionDuration: const Duration(milliseconds: 400),
      reverseTransitionDuration: const Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
              .animate(animation),
          child: child,
        );
      },
    );
  }

  static rotationRoute(screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return screen;
      },
      transitionDuration: const Duration(seconds: 2),
      reverseTransitionDuration: const Duration(seconds: 4),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeIn)),
          child: child,
        );
      },
    );
  }

  static scaleRoute(screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return screen;
      },
      transitionDuration: const Duration(seconds: 2),
      reverseTransitionDuration: const Duration(seconds: 4),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeIn)),
          child: child,
        );
      },
    );
  }

  static sizeRoute(screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return screen;
      },
      transitionDuration: const Duration(seconds: 2),
      reverseTransitionDuration: const Duration(seconds: 4),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return Align(
          child: SizeTransition(
            axisAlignment: -0.9,
            sizeFactor: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeIn)),
            child: child,
          ),
        );
      },
    );
  }

  static scaleRotationRoute(screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return screen;
      },
      transitionDuration: const Duration(seconds: 2),
      reverseTransitionDuration: const Duration(seconds: 4),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeIn)),
          child: RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeIn)),
            child: child,
          ),
        );
      },
    );
  }
}
