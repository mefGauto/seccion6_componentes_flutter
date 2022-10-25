import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/theme/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        const ListTile(
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Titulo de la Tarjeta'),
          subtitle: Text(
              'Lorem nostrud ut occaecat eu do ea deserunt amet ullamco officia qui commodo amet minim.'),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Aceptar')),
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
              ],
            )),
      ]),
    );
  }
}
