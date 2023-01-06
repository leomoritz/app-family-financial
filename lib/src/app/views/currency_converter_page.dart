import 'package:flutter/material.dart';

import '../controllers/currency_converter_controller.dart';
import '../components/currency_converter_box_to.dart';
import '../components/switch_theme_component.dart';
import '../components/currency_converter_box_from.dart';
import '../components/drawer_menu.dart';

class CurrencyConverterPage extends StatefulWidget {
  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  late CurrencyConverterController currencyConverterController;
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  @override
  void initState() {
    super.initState();
    currencyConverterController = CurrencyConverterController(toText, fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenuComponent(),
      appBar: AppBar(
        title: Text('Conversor de Moeda'),
        actions: const [
          SwitchGlobalTheme(),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(top: 100, right: 20, bottom: 20, left: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/converter/currency_converter_1.png',
                height: 150,
                width: 150,
              ),
              CurrencyConverterBoxFrom(
                  textEditingController: toText,
                  selectedCurrency: currencyConverterController.toCurrency,
                  currencies: currencyConverterController.currencies,
                  onChanged: (model) {
                    setState(() {
                      currencyConverterController.toCurrency = model!;
                    });
                  }),
              SizedBox(height: 10),
              CurrencyConverterBoxTo(
                  textEditingController: fromText,
                  selectedCurrency: currencyConverterController.fromCurrency,
                  currencies: currencyConverterController.currencies,
                  onChanged: (model) {
                    setState(() {
                      currencyConverterController.fromCurrency = model!;
                    });
                  }),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(onPressed: () {
                currencyConverterController.convertCurrency();
              }, child: Text('Converter')),
            ],
          ),
        ),
      ),
    );
  }
}
