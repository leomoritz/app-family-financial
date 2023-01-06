import 'package:flutter/material.dart';

import '../controllers/app_controller.dart';

class SwitchGlobalTheme extends StatelessWidget {
  const SwitchGlobalTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.newInstance.isDarkTheme,
      onChanged: (value) {
        AppController.newInstance.changeTheme();
      },
    );
  }
}
