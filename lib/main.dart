import 'package:flutter/material.dart';
import 'widgets/home.dart';
import 'routes/appRouteConfig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: MyAppRouter().router,
    );
  }
}
