import 'package:flutter/material.dart';
import 'package:News/src/navigation/routes.dart';

/// Creamos el material APP
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App news',
      onGenerateRoute: (settings) => Routes.routes(settings),
    );
  }
}
