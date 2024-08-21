import 'package:counter_app/models/models.dart';
import 'package:flutter/material.dart';

import 'package:counter_app/screens/screens.dart';

class RoutesApp {
  static const initialRoutes = 'home';

  static final menuOptions = <MenuOptions>{
    MenuOptions(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'listView',
        icon: Icons.supervisor_account_rounded,
        name: 'Heroe View List',
        screen: const ListViewSeparatedScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'card',
        screen: const CardScreen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.add_alert_sharp,
        name: 'alert',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'counter',
        icon: Icons.calculate,
        name: 'Counter',
        screen: const CounterScreen()),
  };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static MenuOptions getMenuByIndex(int index) {
    return menuOptions.elementAt(index);
  }
}
