import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  const MenuOption(
      {required this.route,
      required this.name,
      required this.screen,
      required this.icon});
}
