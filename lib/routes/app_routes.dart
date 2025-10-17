import 'package:componentes_prog3/models/menu_options.dart';
import 'package:flutter/material.dart';
import 'package:componentes_prog3/screens/screens.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/home', icon: Icons.home_filled, name: 'Menu Principal', screen: const Listview2Screen()),
    MenuOptions(route: '/listview1', icon: Icons.list, name: 'Listview 1', screen: const ListViewScreen())
  ];


  static Map<String, Widget Function(BuildContext)> routes = {
    '/home' : (BuildContext context) => const Listview2Screen(),
    '/listview1' : (BuildContext context) => const ListViewScreen()
  };

}