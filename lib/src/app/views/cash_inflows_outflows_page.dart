import 'package:flutter/material.dart';

import '../components/drawer_menu.dart';
import '../components/switch_theme_component.dart';

class CashInflowsOutflowsPage extends StatefulWidget {
  const CashInflowsOutflowsPage({Key? key}) : super(key: key);

  @override
  State<CashInflowsOutflowsPage> createState() => _CashInflowsOutflowsPageState();
}

class _CashInflowsOutflowsPageState extends State<CashInflowsOutflowsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenuComponent(),
      appBar: AppBar(
        title: Text('Entradas e Saídas'),
        actions: const [
          SwitchGlobalTheme(),
        ],
      ),
      body: Center(
          child: GestureDetector(
            child: Text(
              'Entradas e Saídas',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              setState(() {
                //TODO
              });
            },
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            //TODO
          });
        },
      ),
    );
  }
}
