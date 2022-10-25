import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/theme/app_theme.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  static const options = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Titulo del ListView')),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(
                Icons.numbers,
                color: AppTheme.primary,
              ),
              title: Text(options[index]),
              trailing: const Icon(
                Icons.arrow_forward_rounded,
                color: AppTheme.primary,
              ),
              onTap: () {},
            );
          },
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
