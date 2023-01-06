import 'package:flutter/material.dart';

import '../controllers/app_controller.dart';
import '../models/cash_flow_type_model.dart';

class CashFlowTypeTile extends StatelessWidget {
  final CashFlowTypeModel cashFlowType;

  const CashFlowTypeTile(this.cashFlowType);

  @override
  Widget build(BuildContext context) {
    return Card(
      color:
          AppController.newInstance.isDarkTheme ? Colors.white10 : Colors.white,
      elevation: 2,
      child: ListTile(
        leading: Icon(Icons.compare_arrows_sharp, color: Colors.pink),
        title: Text('${cashFlowType.name}'),
        subtitle: Text(cashFlowType.type == 'Revenue' ? 'Entrada' : 'Saída'),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.pink,
                onPressed: () {
                  Navigator.of(context).pushNamed('/cashflowtype/form', arguments: cashFlowType);
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
