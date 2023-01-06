import 'package:app_familyfinancial/src/app/repositories/cash_flow_type_repository.dart';
import 'package:dio/dio.dart';

import '../models/cash_flow_type_model.dart';

class CashFlowTypeController {
  List<CashFlowTypeModel> cashFlowTypes = [];
  final CashFlowTypeRepository repository = CashFlowTypeRepository(Dio());

  Future start() async {
    cashFlowTypes = await repository.fetchAll();
  }

  Future<List<CashFlowTypeModel>> getAll() async {
    return await repository.fetchAll();
  }

  Future<CashFlowTypeModel> getById(String id) async {
    return await repository.getById(id);
  }

  Future<CashFlowTypeModel> save(CashFlowTypeModel model) async{
    return await repository.create(model);
  }

  Future<CashFlowTypeModel> update(CashFlowTypeModel model) async{
    return await repository.update(model);
  }

  Future<bool> delete(String id) async {
    return await repository.delete(id);
  }

  Future<int> getNextAvailableCode() async {
    return await repository.getNextAvailableCode();
  }

}