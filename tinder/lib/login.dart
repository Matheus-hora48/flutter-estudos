import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 200,
                height: 200,
                child: Image.network(
                    'https://cdn130.picsart.com/339201318056211.png'),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
