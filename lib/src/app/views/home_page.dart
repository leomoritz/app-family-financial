import 'package:app_familyfinancial/src/app/components/switch_theme_component.dart';
import 'package:app_familyfinancial/src/app/components/drawer_menu.dart';
import 'package:app_familyfinancial/src/app/controllers/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenuComponent(),
      appBar: AppBar(
        title: Text('Início'),
        actions: const [
          SwitchGlobalTheme(),
        ],
      ),
      body: Center(
          child: GestureDetector(
        child: Text(
          'Contador: $counter',
          style: TextStyle(fontSize: 20),
        ),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
