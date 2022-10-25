import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/router/app_routes.dart';
import 'package:seccion6_componentes_flutter/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
      //home: ListView2Screen());
    );
  }
}
