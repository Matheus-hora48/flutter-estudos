import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                    'https://avatars.githubusercontent.com/u/99029077?v=4'),
              ),
              accountName: Text('Matheus Hora'),
              accountEmail: Text('matheus@teste.com')),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            subtitle: Text('Tela de inicio'),
            onTap: () {
              print('home');
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined),
            title: Text('Logout'),
            subtitle: Text('Finalizar sessão'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          )
        ]),
      ),
      appBar: AppBar(
        title: Text("Contador"),
        centerTitle: true,
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador: $counter"),
            CustomSwitch(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
