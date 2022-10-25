import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/widgets/widgets.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Tarjetas')),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const <Widget>[
            CustomCard1(),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
              titulo: 'Un paisaje de un atardecer',
              imageUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-20.jpeg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
              imageUrl:
                  'https://i.etsystatic.com/9968767/r/il/d2e74e/1562667390/il_fullxfull.1562667390_e2l8.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
              titulo: 'Un paisaje de un atardecer con arboles',
              imageUrl:
                  'https://img.freepik.com/free-photo/landscape-tree-silhouettes-cloudy-sky-during-beautiful-pink-sunset_181624-6164.jpg?w=2000',
            )
          ],
        ));
  }
}
