import 'package:app_familyfinancial/src/app/models/cash_inflows_outflows_model.dart';
import 'package:dio/dio.dart';

import '../environments/global_environments.dart';

class CashInflowsOutflowsRepository {
  Dio? dio;
  final String url = '${GlobalEnvironments.API_PATH_DEV}/cashInflowsOutflows';

  CashInflowsOutflowsRepository(Dio client) : dio = client ?? Dio();

  Future fetchAll() async {
    final response = await dio!.get('$url/list');
    final list = response.data as List;
    return list.map((json) => CashInflowsOutflowsModel.fromJson(json)).toList();
  }

  Future getById(String id) async {
    final response = await dio!.get('$url/$id');
    return CashInflowsOutflowsModel.fromJson(response.data);
  }

  Future create(CashInflowsOutflowsModel model) async {
    final response = await dio!.post(url, data: model.toJson());
    return CashInflowsOutflowsModel.fromJson(response.data);
  }

  Future update(CashInflowsOutflowsModel model) async {
    final response = await dio!.put(url, data: model.toJson());
    return CashInflowsOutflowsModel.fromJson(response.data);
  }

  Future delete(String id) async {
    final response = await dio!.delete('$url/$id');
    return CashInflowsOutflowsModel.fromJson(response.data);
  }
}