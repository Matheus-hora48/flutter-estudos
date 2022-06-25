import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // ignore: non_constant_identifier_names
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final HomeController = HomeController();

  test("Deve converter de real para dolar", ()){
    toText.text = '2.0';
    HomeController.toCurrency =  CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016);
    HomeController.convert();
    HomeController.fromCurrency = 
    expect(fromText.text, '0.36');
    
  }
}
