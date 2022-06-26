import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  _success() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('item $index'),
        );
      },
    );
  }

  _erro() {
    return Center(
      child: RaisedButton(
        onPressed: () {},
        child: Text('Tentar novamente'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Todo\'s'),
        ),
        body: _erro());
  }
}
