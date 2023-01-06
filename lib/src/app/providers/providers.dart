import 'package:app_familyfinancial/src/app/providers/cash_flow_type_provider.dart';
import 'package:provider/provider.dart';

class Providers {
  List<ChangeNotifierProvider> getProviders() {
    return [
         ChangeNotifierProvider(
           create: (context) => CashFlowTypeProvider(),
         ),
       ];
  }
}
