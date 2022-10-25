import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/router/app_routes.dart';
import 'package:seccion6_componentes_flutter/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const menuOptions = AppRoutes.menuOptions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Componentes en Flutter'),
          ),
        ),
        body: ListView.separated(
          itemCount: AppRoutes.menuOptions.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
            title: Text(menuOptions[index].name),
            trailing: const Icon(Icons.arrow_circle_right_outlined,
                color: AppTheme.primary),
            onTap: () {
              Navigator.pushNamed(context, menuOptions[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
