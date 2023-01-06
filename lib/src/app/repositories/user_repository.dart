import 'package:dio/dio.dart';
import '../environments/global_environments.dart';
import '../models/user_model.dart';

class UserRepository {
  Dio? dio;
  final String url = '${GlobalEnvironments.API_PATH_DEV}/user';

  UserRepository(Dio client) : dio = client ?? Dio();

  Future fetchAll() async {
    final response = await dio!.get('$url/list');
    final list = response.data as List;
    return list.map((json) => UserModel.fromJson(json)).toList();
  }

  Future getById(String id) async {
    final response = await dio!.get('$url/$id');
    return UserModel.fromJson(response.data);
  }

  Future create(UserModel model) async {
    final response = await dio!.post(url, data: model.toJson());
    return UserModel.fromJson(response.data);
  }

  Future update(UserModel model) async {
    final response = await dio!.put(url, data: model.toJson());
    return UserModel.fromJson(response.data);
  }

  Future delete(String id) async {
    final response = await dio!.delete('$url/$id');
    return UserModel.fromJson(response.data);
  }

  Future<bool> validateLogin(String email, String password) async {
    final login = {"login": email, "password": password};
    final response = await dio!.post('$url/validateLogin', data: login);

    if (response.statusCode != 200){
      throw Exception('Erro Interno do Servidor. Contate o Administrador do Sistema!');
    }

    return response.data['logicResponse'];
  }
}
