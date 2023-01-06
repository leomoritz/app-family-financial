import 'package:app_familyfinancial/src/app/controllers/cash_flow_type_controller.dart';
import 'package:flutter/cupertino.dart';

import '../models/cash_flow_type_model.dart';

class CashFlowTypeProvider extends ChangeNotifier {
  final _cashFlowTypeController = CashFlowTypeController();
  bool isLoading = false;
  late List<CashFlowTypeModel> _cashFlowTypes = [];
  late int _nextAvailableCode = 0;

  Future<void> start() async {
    getAll();
    getNextAvailableCode();
  }

  Future<void> getAll() async {
    isLoading = true;
    notifyListeners();

    final response = await _cashFlowTypeController.getAll();

    _cashFlowTypes = response;
    isLoading = false;
    notifyListeners();
  }

  Future<void> getNextAvailableCode() async {
    isLoading = true;
    notifyListeners();

    final response = await _cashFlowTypeController.getNextAvailableCode();

    _nextAvailableCode = response;
    isLoading = false;
    notifyListeners();
  }

  List<CashFlowTypeModel> get all {
    return _cashFlowTypes;
  }

  int get count {
    return _cashFlowTypes.length;
  }

  CashFlowTypeModel getByIndex(int index) {
    return _cashFlowTypes.elementAt(index);
  }

  Future<void> put(CashFlowTypeModel model) async {
    if (model == null) {
      return;
    }

    CashFlowTypeModel response = CashFlowTypeModel();

    if ((model.id != null || model.id != '') &&
        _cashFlowTypes.contains(model)) {
      response = await _cashFlowTypeController.update(model);
    } else {
      response = await _cashFlowTypeController.save(model);
    }

    _cashFlowTypes.add(response);

    notifyListeners();
  }

  Future<bool> remove(String id) async {
    if(id == null || id.isEmpty){
      return false;
    }

    bool response = await _cashFlowTypeController.delete(id);

    if(response){
      _cashFlowTypes.removeWhere((element) => element.id == id);
      notifyListeners();
      return response;
    }

    return response;
  }
}
