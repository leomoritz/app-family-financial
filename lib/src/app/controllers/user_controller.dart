import 'dart:convert';

import 'package:app_familyfinancial/src/app/controllers/app_controller.dart';
import 'package:app_familyfinancial/src/app/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';
import '../views/login_page.dart';

class UserController {
  List<UserModel> users = [];
  final UserRepository repository = UserRepository(Dio());
  final appState = ValueNotifier<UserState>(UserState.start);

  Future<void> start() async {
    appState.value = UserState.start;
  }

  Future<List<UserModel>> getAll() async {
    return await repository.fetchAll();
  }

  Future<UserModel> getById(String id) async {
    return await repository.getById(id);
  }

  Future<UserModel> save(UserModel model) async {
    return await repository.create(model);
  }

  Future<UserModel> update(UserModel model) async {
    return await repository.update(model);
  }

  Future<bool> delete(String id) async {
    return await repository.delete(id);
  }

  Future<bool> login(String email, String password) async {
    try {
      appState.value = UserState.loading;
      var response = await repository.validateLogin(email, password);
      _saveUserPreferences(response);
      return response;
    } on Exception catch (e) {
      appState.value = UserState.start;
      print(e);
      throw Exception('Não foi possível realizar o login. '
          'Verifique sua conexão com a internet e se os dados informados estão corretos.');
    }
  }

  _saveUserPreferences(var response) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('token', 'TODO');
    sharedPreferences.setString('name', 'Leônidas Moritz Rosa');
    sharedPreferences.setString('email', 'leogui.moritz@gmail.com');
    sharedPreferences.setString('preferences', 'TODO');
    sharedPreferences.setString('photo', 'TODO');
    print(sharedPreferences.getString('name'));
  }

  Future<UserModel> getUserPreferences() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString('token');
    String? name = sharedPreferences.getString('name');
    String? email = sharedPreferences.getString('email');
    String? photo = sharedPreferences.getString('photo');
    String? preferences = sharedPreferences.getString('preferences');
    UserModel userModel = UserModel.userPreferences(name, email, token, photo, preferences);
    return userModel;
  }

  Future<bool> logout() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.clear();
      return true;
    } catch (e) {
      throw Exception(
          'Ocorreu um erro ao sair da aplicação. Contate o Administrador do Sistema. Causa: $e');
    }
  }

  String validate(String input, String controller, bool isEmail) {
    return isEmail
        ? validateEmail(input, controller)
        : validatePassword(input, controller);
  }

  String validateEmail(String input, String controller) {
    String response = '';

    if (input.isEmpty) {
      response = 'Por favor, digite seu e-mail';
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(controller)) {
      response = 'Por favor, digite um e-mail correto';
    }

    return response;
  }

  String validatePassword(String input, String controller) {
    String response = '';

    if (input.isEmpty) {
      response = 'Por favor, digite sua senha';
    } else if (input.length < 6) {
      response = 'Por favor, digite uma senha maior que 6 caracteres';
    }

    return response;
  }
}

enum UserState { start, loading }
