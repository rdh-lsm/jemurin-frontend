import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Jemuran_Otomatis/utils/theme/theme.dart';

import 'features/authentication/screens/login/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: JoTheme.lightTheme,
      darkTheme: JoTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
}