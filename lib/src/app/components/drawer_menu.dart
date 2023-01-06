import 'package:app_familyfinancial/src/app/controllers/user_controller.dart';
import 'package:app_familyfinancial/src/app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/app_controller.dart';

class DrawerMenuComponent extends StatefulWidget {
  const DrawerMenuComponent({Key? key}) : super(key: key);

  @override
  State<DrawerMenuComponent> createState() => _DrawerMenuComponentPageState();
}

class _DrawerMenuComponentPageState extends State<DrawerMenuComponent> {
  final _userController = UserController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: AppController.newInstance.isDarkTheme
                    ? Colors.black26
                    : Colors.indigo),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset('assets/images/profile/user_picture.jpg'),
            ),
            accountName: Text('Leônidas Moritz Rosa'),
            accountEmail: Text('leogui.moritz@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.pink),
            title: Text("Home"),
            subtitle: Text("Tela de Início"),
            onTap: () => Navigator.of(context).pushReplacementNamed('/home'),
          ),
          ListTile(
            leading: Icon(Icons.compare_arrows_sharp, color: Colors.pink),
            title: Text('Tipos de Fluxo'),
            subtitle: Text('Tipos de Entradas/Saídas'),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed('/cashflowtype'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money, color: Colors.pink),
            title: Text('Fluxos'),
            subtitle: Text('Fluxos de Entradas/Saídas'),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed('/cashinflowsoutflows'),
          ),
          ListTile(
            leading: Icon(Icons.rocket_launch, color: Colors.pink),
            title: Text('Planejamentos'),
            subtitle: Text('Planejamento Familiar'),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed('/financialplan'),
          ),
          ListTile(
            leading: Icon(Icons.currency_exchange, color: Colors.pink),
            title: Text('Conversor'),
            subtitle: Text('Conversor de Moeda'),
            onTap: () => Navigator.of(context)
                .pushReplacementNamed('/currencyconverter'),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.pink),
            title: Text('Configurações'),
            subtitle: Text('Configurações da Aplicação'),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed('/settings'),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.pink),
            title: Text('Logout'),
            subtitle: Text('Finalizar Sessão'),
            onTap: () async {
              var isLogout = await _userController.logout();
              if (isLogout) {
                Navigator.of(context).pushReplacementNamed('/login');
              }
            },
          ),
        ],
      ),
    );
  }
}
