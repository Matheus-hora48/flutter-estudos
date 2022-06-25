import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                                    value: 1,
                                    child: Text(
                                      'Real',
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                DropdownMenuItem(
                                    value: 1,
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
  }
}
