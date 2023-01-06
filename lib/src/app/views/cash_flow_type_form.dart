import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/drawer_menu.dart';
import '../components/switch_theme_component.dart';

class CashFlowTypeForm extends StatefulWidget {
  const CashFlowTypeForm({Key? key}) : super(key: key);

  @override
  State<CashFlowTypeForm> createState() => _CashFlowTypeFormState();
}

class _CashFlowTypeFormState extends State<CashFlowTypeForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tipo de Fluxo'),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Código'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Descrição'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Tipo'),
                ),
                Column(
                    children: [
                  FormField(
                      initialValue: false,
                      builder: (FormFieldState<dynamic> field) {
                        return SwitchListTile(
                            title: Text(
                              'Valor Fixo',
                              style: TextStyle(color: Colors.black54),
                            ),
                            contentPadding: EdgeInsets.all(0),
                            value: field.value,
                            onChanged: (value) {
                              field.didChange(value);
                            });
                      }),
                  TextFormField(
                    initialValue: '0.0',
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Valor', enabled: true),
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}
