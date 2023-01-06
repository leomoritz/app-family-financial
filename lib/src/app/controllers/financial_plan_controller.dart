import 'dart:ffi';

import 'package:app_familyfinancial/src/app/models/financial_plan_model.dart';
import 'package:app_familyfinancial/src/app/repositories/financial_plan_repository.dart';
import 'package:dio/dio.dart';

class FinancialPlanController {
  List<FinancialPlanModel> financialPlans = [];
  final FinancialPlanRepository repository = FinancialPlanRepository(Dio());

  Future start() async {
    financialPlans = await repository.fetchAll();
  }

  Future<List<FinancialPlanModel>> getAll() async {
    return await repository.fetchAll();
  }

  Future<FinancialPlanModel> getById(String id) async {
    return await repository.getById(id);
  }

  Future<FinancialPlanModel> save(FinancialPlanModel model) async{
    return await repository.create(model);
  }

  Future<FinancialPlanModel> update(FinancialPlanModel model) async{
    return await repository.update(model);
  }

  Future<Bool> delete(String id) async {
    return await repository.delete(id);
  }

}