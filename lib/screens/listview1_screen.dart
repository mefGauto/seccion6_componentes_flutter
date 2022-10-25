import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/theme/app_theme.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  static const options = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Titulo del ListView'))),
        body: ListView(
          children: <Widget>[
            ...options
                .map((numeros) => ListTile(
                      leading: const Icon(Icons.numbers_outlined,
                          color: AppTheme.primary),
                      title: Text('$numeros'),
                      trailing: const Icon(Icons.arrow_circle_right_outlined,
                          color: AppTheme.primary),
                    ))
                .toList()

            //ListTile(
            //  leading: Icon(Icons.abc_outlined),
            //  title: Text('ListTile en un ListView'),
            //)
          ],
        ));
  }
}
