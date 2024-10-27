import 'package:flutter/material.dart';
import 'models/themeProvider.dart';
import 'routes/appRouteConfig.dart';
import 'package:provider/provider.dart';
import 'myThemeData.dart';

void main() {
  // runApp(const MyApp());
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late RouterConfig<Object> _routerConfig;

  @override
  void initState() {
    super.initState();
    _routerConfig = MyAppRouter().router;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp.router(
            theme: MyThemeData().lightMode,
            darkTheme: MyThemeData().darkMode,
            themeMode: themeProvider.themeMode,
            debugShowCheckedModeBanner: false,
            routerConfig: _routerConfig,
          );
        },
      ),
    );
  }
}
