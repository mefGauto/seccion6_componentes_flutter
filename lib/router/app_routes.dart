import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/models/models.dart';
import 'package:seccion6_componentes_flutter/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static const menuOptions = <MenuOption>[
    //MenuOption(
    //    route: 'home',
    //    name: 'Home Screen',
    //    screen: HomeScreen(),
    //    icon: Icons.home_work_outlined),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'inputformsscreen',
        name: 'Formularios',
        screen: InputFormsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'listview1',
        name: 'ListView 1',
        screen: ListView1Screen(),
        icon: Icons.view_list),
    MenuOption(
        route: 'listview2',
        name: 'ListView 2',
        screen: ListView2Screen(),
        icon: Icons.view_list),
    MenuOption(
        route: 'listviewbuilder',
        name: 'Scroll Infinito',
        screen: ListViewBuilderScreen(),
        icon: Icons.swap_vert_circle_outlined),
    MenuOption(
        route: 'animatedscreen',
        name: 'Animaciones',
        screen: AnimatedScreen(),
        icon: Icons.animation_rounded),
    MenuOption(
        route: 'cards',
        name: 'Tarjetas',
        screen: CardsScreen(),
        icon: Icons.card_membership),
    MenuOption(
        route: 'slider',
        name: 'Slider',
        screen: SliderScreen(),
        icon: Icons.auto_fix_normal),
    MenuOption(
        route: 'alertscreen',
        name: 'Alerta',
        screen: AlertScreen(),
        icon: Icons.warning_amber),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //  'home': (BuildContext context) => const HomeScreen(),
  //  'listview1': (BuildContext context) => const ListView1Screen(),
  //  'listview2': (BuildContext context) => const ListView2Screen(),
  //  'alertscreen': (BuildContext context) => const AlertScreen(),
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const AlertScreen(),
    );
  }
}
