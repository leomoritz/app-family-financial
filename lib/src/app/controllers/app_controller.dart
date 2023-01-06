import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController newInstance = AppController();

  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  showSucessMessage(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (alert) => AlertDialog(
              title: Center(
                child: Text("Login Realizado com Sucesso"),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(8.0)),
              actions: [
                Center(
                  child: ElevatedButton(
                      onPressed: () => Navigator.pop(alert), child: Text('OK')),
                )
              ],
              icon: Icon(Icons.check_circle),
              iconColor: Colors.green,
            ));
    Navigator.of(context).pushReplacementNamed('/home');
  }

  showFailMessage(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (alert) => AlertDialog(
              title: Center(
                child: Text("Não foi possível realizar o login"),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(8.0)),
              actions: [
                Center(
                  child: ElevatedButton(
                      onPressed: () => Navigator.pop(alert), child: Text('OK')),
                )
              ],
              icon: Icon(Icons.error),
              iconColor: Colors.red,
            ));
  }

 loadingState(){
    return Center(child: CircularProgressIndicator(),);
  }

}

enum AppState { start, loading, success, error }
