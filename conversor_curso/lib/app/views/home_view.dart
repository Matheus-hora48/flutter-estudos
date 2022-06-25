import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../components/currenty_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de moeda'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.network(
                'https://cryptologos.cc/logos/usd-coin-usdc-logo.png',
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 30,
              ),
              CurrencyBox(),
              SizedBox(
                height: 10,
              ),
              CurrencyBox(),
              SizedBox(
                height: 50,
              ),
              RaisedButton(
                color: Colors.amber,
                onPressed: () {},
                child: Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
