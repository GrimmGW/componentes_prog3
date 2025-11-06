import 'package:componentes_prog3/models/menu_options.dart';
import 'package:flutter/material.dart';
import 'package:componentes_prog3/screens/screens.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/home', icon: Icons.home_filled, name: 'Menu Principal', screen: const HomeScreen()),
    MenuOptions(route: '/listview1', icon: Icons.list, name: 'Listview 1', screen: const ListViewScreen()),
    MenuOptions(route: '/alert', icon: Icons.warning_rounded, name: 'Pantalla de Alertas', screen: const AlertScreen()),
    MenuOptions(route: '/avatar', icon: Icons.supervised_user_circle_rounded, name: 'Pantalla de Perfil', screen: const AvatarScreen()),
    MenuOptions(route: '/card', icon: Icons.card_membership_rounded, name: 'Pantalla de Tarjetas', screen: const CardScreen()),
    MenuOptions(route: '/container', icon: Icons.check_box_outline_blank_outlined, name: 'Pantalla de Container', screen: const ContainerScreen()),
    MenuOptions(route: '/dependencies', icon: FontAwesomeIcons.puzzlePiece, name: 'Pantalla de Dependencias', screen: const DependenciesScreen()),
    MenuOptions(route: '/slider', icon: FontAwesomeIcons.sliders, name: 'Pantalla de Sliders', screen: const SliderScreen()),
    MenuOptions(route: '/inputs', icon: FontAwesomeIcons.textWidth, name: 'Pantalla de Inputs', screen: const InputsScreen()),
    
  ];


  static Map<String, Widget Function(BuildContext)> routes = {
    '/home' : (BuildContext context) => const HomeScreen(),
    '/listview1' : (BuildContext context) => const ListViewScreen(),
    '/alert' : (BuildContext context) => const AlertScreen(),
    '/avatar' : (BuildContext context) => const AvatarScreen(),
    '/card' : (BuildContext context) => const CardScreen(),
    '/container' : (BuildContext context) => const ContainerScreen(),
    '/dependencies' : (BuildContext context) => const DependenciesScreen(),
    '/slider' : (BuildContext context) => const SliderScreen(),
    '/inputs' : (BuildContext context) => const InputsScreen(),
  };

}