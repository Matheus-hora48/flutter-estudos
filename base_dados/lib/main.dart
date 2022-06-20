import 'package:flutter/material.dart';

void main() => runApp(
  new Home()
);

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("B-Dados"),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
      ),
    );
  }
}
