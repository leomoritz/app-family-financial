import 'package:flutter/material.dart';

import '../components/drawer_menu.dart';
import '../components/switch_theme_component.dart';

class FinancialPlanPage extends StatefulWidget {
  const FinancialPlanPage({Key? key}) : super(key: key);

  @override
  State<FinancialPlanPage> createState() => _FinancialPlanPageState();
}

class _FinancialPlanPageState extends State<FinancialPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenuComponent(),
      appBar: AppBar(
        title: Text('Planejamentos'),
        actions: const [
          SwitchGlobalTheme(),
        ],
      ),
      body: Center(
          child: GestureDetector(
            child: Text(
              'Planejamentos',
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
