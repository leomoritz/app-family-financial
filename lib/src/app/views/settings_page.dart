import 'package:flutter/material.dart';

import '../components/drawer_menu.dart';
import '../components/switch_theme_component.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenuComponent(),
      appBar: AppBar(
        title: Text('Configurações'),
        actions: const [
          SwitchGlobalTheme(),
        ],
      ),
      body: Center(
          child: GestureDetector(
            child: Text(
              'Configurações',
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
