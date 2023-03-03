import 'package:fl_components/screens/listview2_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

import '../screens/card_screen.dart';
import '../screens/home_screen.dart';
import '../screens/listview1_screen.dart';
import 'package:fl_components/screens/alert_screen.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     scren: const HomeScreen(),
    //     icon: Icons.home_outlined),

    MenuOption(
        route: 'listview1',
        name: 'Litview tipo 1',
        scren: const ListView1Screen(),
        icon: Icons.list),

    MenuOption(
        route: 'listview2',
        name: 'Litview tipo 1',
        scren: const ListView2Screen(),
        icon: Icons.list_alt_outlined),

    MenuOption(
        route: 'alert',
        name: 'Alerts',
        scren: const AlertScreen(),
        icon: Icons.notifications_none_outlined),

    MenuOption(
        route: 'card',
        name: 'Cards',
        scren: const CardScreen(),
        icon: Icons.credit_card),

    MenuOption(
        route: 'avatar',
        name: 'CircleAvatar',
        scren: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),

    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        scren: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.scren});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView1Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenersteRoute(RouteSettings settings) {
    print(settings);
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
