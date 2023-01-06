import 'package:app_familyfinancial/src/app/models/cash_flow_type_model.dart';
import 'package:app_familyfinancial/src/app/providers/cash_flow_type_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cash_flow_type_tile.dart';
import '../components/drawer_menu.dart';
import '../components/switch_theme_component.dart';
import '../controllers/cash_flow_type_controller.dart';

class CashFlowTypePage extends StatefulWidget {
  const CashFlowTypePage({Key? key}) : super(key: key);

  @override
  State<CashFlowTypePage> createState() => _CashFlowTypePageState();
}

class _CashFlowTypePageState extends State<CashFlowTypePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CashFlowTypeProvider>(context, listen: false).start();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenuComponent(),
      appBar: AppBar(
        title: Text('Tipos de Fluxo'),
        actions: const [
          SwitchGlobalTheme(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5, top: 10, right: 5),
        child: Consumer<CashFlowTypeProvider>(builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.count,
          itemBuilder: (context, index) =>
              CashFlowTypeTile(value.getByIndex(index)),
        );
      }),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
            Navigator.of(context).pushNamed('/cashflowtype/form');
        },
      ),
    );
  }
}
