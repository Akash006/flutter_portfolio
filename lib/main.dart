import 'package:flutter/material.dart';
import 'routes/appRouteConfig.dart';
import 'myThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: MyThemeData().lightMode,
      darkTheme: MyThemeData().darkMode,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routerConfig: MyAppRouter().router,
    );
  }
}
