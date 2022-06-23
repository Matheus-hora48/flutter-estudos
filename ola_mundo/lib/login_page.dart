import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String passoword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.network(
                    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/free-logo-space-template-design-39cac50098804820776e4efc76d5eb85_screen.jpg?ts=1586864091'),
              ),
              Container(
                height: 10,
              ),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (text) {
                  passoword = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('Passoword'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(onPressed: () {
                if (email == 'matheus@teste.com' && passoword == '123456') {
                  Navigator.of(context).pushNamed('/home');
                }
                ;
                child:
                Text('Entrar');
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
