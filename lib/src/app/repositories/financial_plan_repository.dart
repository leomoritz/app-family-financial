import 'package:dio/dio.dart';

import '../environments/global_environments.dart';
import '../models/financial_plan_model.dart';

class FinancialPlanRepository {
  Dio? dio;
  final String url = '${GlobalEnvironments.API_PATH_DEV}/financialPlan';

  FinancialPlanRepository(Dio client) : dio = client ?? Dio();

  Future fetchAll() async {
    final response = await dio!.get('$url/list');
    final list = response.data as List;
    return list.map((json) => FinancialPlanModel.fromJson(json)).toList();
  }

  Future getById(String id) async {
    final response = await dio!.get('$url/$id');
    return FinancialPlanModel.fromJson(response.data);
  }

  Future create(FinancialPlanModel model) async {
    final response = await dio!.post(url, data: model.toJson());
    return FinancialPlanModel.fromJson(response.data);
  }

  Future update(FinancialPlanModel model) async {
    final response = await dio!.put(url, data: model.toJson());
    return FinancialPlanModel.fromJson(response.data);
  }

  Future delete(String id) async {
    final response = await dio!.delete('$url/$id');
    return FinancialPlanModel.fromJson(response.data);
  }
}