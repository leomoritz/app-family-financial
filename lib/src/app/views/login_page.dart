import 'package:app_familyfinancial/src/app/controllers/app_controller.dart';
import 'package:flutter/material.dart';

import '../controllers/user_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user = '';
  String password = '';

  final _appController = AppController.newInstance;
  final _userController = UserController();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  _start() {
    return _loginBody();
  }

  _loading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  _stateManagement(UserState state) {
    switch (state) {
      case UserState.start:
        return _start();
      case UserState.loading:
        return _loading();
      default:
        throw Exception(
            "Não foi possível identificar o status da ação de login.");
    }
  }

  @override
  void initState() {
    super.initState();
    _userController.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body());
  }

  Widget _body() {
    return AnimatedBuilder(
      animation: _userController.appState,
      builder: (context, child) {
        return _stateManagement(_userController.appState.value);
      },
      child: _loginBody(),
    );
  }

  Widget _loginBody(){
    _loginMessageError(String message) {
      return SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.redAccent,
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Theme(
              data: ThemeData(backgroundColor: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                      width: 400,
                      height: 200,
                      child: Image.asset(
                          'assets/images/login/login-icon_5.png')),
                  Container(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      icon: Icon(Icons.person),
                    ),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (email) {
                      String message = _userController.validate(
                          email!, _emailController.text, true);
                      return message.isNotEmpty ? message : null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      icon: Icon(Icons.password),
                    ),
                    controller: _passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (password) {
                      String message = _userController.validate(
                          password!, _passwordController.text, false);
                      return message.isNotEmpty ? message : null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      FocusScopeNode currentFocus = FocusScope.of(context);

                      if (_formKey.currentState!.validate()) {
                        try {
                          var loginIsValid = await _userController.login(
                              _emailController.text,
                              _passwordController.text);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }

                          if (loginIsValid) {
                            Navigator.pushReplacementNamed(context, '/home');
                          } else {
                            throw Exception(
                                'Usuário e/ou Senha estão inválidos!');
                          }
                        } catch (e) {
                          _passwordController.clear();
                          ScaffoldMessenger.of(context)
                              .showSnackBar(_loginMessageError('$e'));
                        }
                      }
                    },
                    child: Text('Entrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
