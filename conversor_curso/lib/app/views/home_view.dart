import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

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
              const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.network(
                'https://cryptologos.cc/logos/usd-coin-usdc-logo.png',
                width: 200,
                height: 200,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: SizedBox(
                            height: 56,
                            child: DropdownButton(
                                isExpanded: true,
                                underline: Container(
                                  height: 1,
                                  color: Color.fromARGB(255, 10, 9, 5),
                                ),
                                items: [
                                  DropdownMenuItem(
                                      value: 0,
                                      child: Text(
                                        'Real',
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                  DropdownMenuItem(
                                      value: value,
                                      child: Text(
                                        'Real',
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                ],
                                onChanged: null))),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
