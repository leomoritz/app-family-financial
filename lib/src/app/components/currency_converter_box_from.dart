import 'package:app_familyfinancial/src/app/models/currency_model.dart';
import 'package:flutter/material.dart';



class CurrencyConverterBoxFrom extends StatelessWidget {
  final List<CurrencyModel> currencies;
  final CurrencyModel selectedCurrency;
  final TextEditingController textEditingController;
  final void Function(CurrencyModel?)? onChanged;

  const CurrencyConverterBoxFrom(
      {Key? key, required this.currencies, required this.textEditingController, this.onChanged, required this.selectedCurrency})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
              height: 56,
              child: DropdownButton(
                isExpanded: true,
                value: selectedCurrency,
                iconEnabledColor: Colors.indigo,
                underline: Container(
                  height: 1,
                  color: Colors.indigo,
                ),
                items: currencies
                    .map((e) => DropdownMenuItem(value: e, child: Text(e.name),))
                    .toList(), style: TextStyle(color: Colors.pink),
                onChanged: onChanged,
                dropdownColor: Colors.white,
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 2,
            child: TextField(
              controller: textEditingController,
              style: TextStyle(color: Colors.pink),
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo)),
                suffixIcon: Icon(Icons.attach_money, color: Colors.pink),
              ),
              keyboardType: TextInputType.number,
            )),
      ],
    );
  }
}
