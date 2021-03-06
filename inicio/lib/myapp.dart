import 'package:flutter/material.dart';
import 'package:inicio/home_controller.dart';
import 'package:inicio/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeController(child: HomeWidget()),
    );
  }
}
