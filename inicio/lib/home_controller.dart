import 'package:flutter/material.dart';

class HomeController extends InheritedWidget {
  HomeController({Key? key, required super.child})
      : super(
          key: key,
        );

  int value = 0;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
