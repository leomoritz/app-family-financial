import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final user = await fetch();
  print(user.email);
}

Future<User> fetch() async {
  try {
    var url =
        'http://pc010166.interno.senior.com.br:8081/user/4ac544e4-b24c-46c3-b6dd-4284693f77cf';
    var response = await http.get(Uri.parse(url));
    var json = jsonDecode(response.body);
    var user = User.fromJson(json);
    return user;
  } catch (exception) {
    throw Exception(
        'Ocorreu um erro ao buscar o usuário informado. Causa: $exception');
  }
}

class User {
  final String _id;
  final String _name;
  final String _email;
  final String _login;
  final String _password;

  User(this._id, this._name, this._email, this._login, this._password);

  String get password => _password;

  String get login => _login;

  String get email => _email;

  String get name => _name;

  String get id => _id;

  factory User.fromJson(Map json) {
    return User(json['id'], json['name'], json['email'], json['login'],
        json['password']);
  }

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'login': login,
      'password': password
    };
  }
}
