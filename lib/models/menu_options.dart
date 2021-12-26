import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOptions({
    required this.screen,
    required this.icon,
    required this.route,
    required this.name,
  });
  
}