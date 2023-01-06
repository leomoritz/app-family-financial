import 'package:dio/dio.dart';

import '../environments/global_environments.dart';
import '../models/cash_flow_type_model.dart';

class CashFlowTypeRepository {
  Dio? dio;
  final String url = '${GlobalEnvironments.API_PATH_DEV}/cashFlowType';

  CashFlowTypeRepository(Dio client) : dio = client ?? Dio();

  Future fetchAll() async {
    try {
      final response = await dio!.get('$url/list');
      final list = response.data as List;
      return list.map((json) => CashFlowTypeModel.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Não foi possível listar os Tipos de Fluxos. Causa: ${e}.');
    }
  }

  Future getById(String id) async {
    final response = await dio!.get('$url/$id');
    return CashFlowTypeModel.fromJson(response.data);
  }

  Future create(CashFlowTypeModel model) async {
    final response = await dio!.post(url, data: model.toJson());
    return CashFlowTypeModel.fromJson(response.data);
  }

  Future update(CashFlowTypeModel model) async {
    final response = await dio!.put(url, data: model.toJson());
    return CashFlowTypeModel.fromJson(response.data);
  }

  Future delete(String id) async {
    final response = await dio!.delete('$url/$id');
    return CashFlowTypeModel.fromJson(response.data);
  }

  Future getNextAvailableCode() async {
    final response = await dio!.delete('$url/getNextAvailableCode');
    return CashFlowTypeModel.fromJson(response.data);
  }
}
