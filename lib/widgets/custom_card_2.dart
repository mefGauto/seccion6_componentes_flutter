import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key, required this.imageUrl, this.titulo});

  final String imageUrl;
  final String? titulo;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 50,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/img/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
          if (titulo != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Text(titulo!))
        ],
      ),
    );
  }
}
