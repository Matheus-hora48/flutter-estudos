import 'dart:js';

import 'package:flutter/material.dart';

// class HomeWidget extends StatelessWidget {

//   var controller = context.

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Home"),
//         ),
//         body: Center(
//           child: Text('Teste'),
//         ));
//     floatingActionButton:
//     FloatingActionButton(
//       onPressed: () {},
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text('Teste'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
