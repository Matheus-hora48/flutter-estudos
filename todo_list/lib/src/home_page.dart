import 'package:flutter/material.dart';
import 'package:todo_list/src/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final controller = HomeController();

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

  _loading() {
    return Center(child: CircularProgressIndicator());
  }

  _start() {
    return Container();
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.loading:
        return _loading();
      case HomeState.error:
        return _erro();
      case HomeState.success:
        return _success();
      default:
        return _start();
    }
  }

  @override
  void iniState() {
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Todo\'s'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: stateManagement(HomeState.success));
  }
}
