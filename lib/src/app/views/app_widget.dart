import 'package:app_familyfinancial/src/app/providers/cash_flow_type_provider.dart';
import 'package:app_familyfinancial/src/app/views/settings_page.dart';
import 'package:app_familyfinancial/src/app/views/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/app_controller.dart';
import '../providers/providers.dart';
import 'cash_flow_type_form.dart';
import 'cash_flow_type_page.dart';
import 'cash_inflows_outflows_page.dart';
import 'currency_converter_page.dart';
import 'financial_plan_page.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _providers = Providers();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CashFlowTypeProvider(),
        ),
      ],
      child: AnimatedBuilder(
        animation: AppController.newInstance,
        builder: (context, child) {
          return MaterialApp(
            title: "Gestão de Finanças da Família",
            home: WelcomePage(),
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              brightness: AppController.newInstance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
              backgroundColor: AppController.newInstance.isDarkTheme
                  ? Colors.black12
                  : Colors.white,
            ),
            routes: {
              '/login': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/cashflowtype': (context) => CashFlowTypePage(),
              '/cashflowtype/form': (context) => CashFlowTypeForm(),
              '/cashinflowsoutflows': (context) => CashInflowsOutflowsPage(),
              '/financialplan': (context) => FinancialPlanPage(),
              '/currencyconverter': (context) => CurrencyConverterPage(),
              '/settings': (context) => SettingsPage(),
            },
          );
        },
      ),
    );
  }
}
