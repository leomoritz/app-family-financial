import 'package:app_familyfinancial/src/app/controllers/currency_converter_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final currencyConverterController =
      CurrencyConverterController(toText, fromText);

  test('should convert from real to dolar', () {
    toText.text = '2.0';
    currencyConverterController.convertCurrency();
    expect(fromText.text, '0.36');
  });
}
