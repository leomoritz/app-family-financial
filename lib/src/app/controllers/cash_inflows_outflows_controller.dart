import 'dart:ffi';

import 'package:app_familyfinancial/src/app/models/cash_inflows_outflows_model.dart';
import 'package:app_familyfinancial/src/app/repositories/cash_inflows_outflows.repository.dart';
import 'package:dio/dio.dart';

class CashInflowsOutflowsController {
  List<CashInflowsOutflowsModel> cashInflowsOutflows = [];
  final CashInflowsOutflowsRepository repository = CashInflowsOutflowsRepository(Dio());

  Future start() async {
    cashInflowsOutflows = await repository.fetchAll();
  }

  Future<List<CashInflowsOutflowsModel>> getAll() async {
    return await repository.fetchAll();
  }

  Future<CashInflowsOutflowsModel> getById(String id) async {
    return await repository.getById(id);
  }

  Future<CashInflowsOutflowsModel> save(CashInflowsOutflowsModel model) async{
    return await repository.create(model);
  }

  Future<CashInflowsOutflowsModel> update(CashInflowsOutflowsModel model) async{
    return await repository.update(model);
  }

  Future<Bool> delete(String id) async {
    return await repository.delete(id);
  }

}