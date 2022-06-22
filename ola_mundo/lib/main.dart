import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: "Me paga luisão"));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) => Container(
          child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 64.0),
        ),
      ));
}
