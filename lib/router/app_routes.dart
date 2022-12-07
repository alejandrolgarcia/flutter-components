import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import 'package:flutter_components/screens/screens.dart';

class AppRoutes {

    static const initialRoute = 'home';

    static final menuOptions = <MenuOption>[
        // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_outlined ),
        MenuOption(route: 'listview1', name: 'Listview1', screen: const Listview1Screen(), icon: Icons.list_outlined ),
        MenuOption(route: 'listview2', name: 'Listview2', screen: const Listview2Screen(), icon: Icons.list_rounded ),
        MenuOption(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.add_alert_rounded ),
        MenuOption(route: 'card', name: 'Card', screen: const CardScreen(), icon: Icons.card_membership_outlined ),
        MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.account_circle_rounded ),
        MenuOption(route: 'animated', name: 'Animated', screen: const AnimatedScreen(), icon: Icons.play_circle_fill_outlined ),
    ];

    static Map<String, Widget Function(BuildContext)> getAppRoutes() {

        Map<String, Widget Function(BuildContext)> appRoutes = {};
        appRoutes.addAll({ 'home': (BuildContext context) => const HomeScreen() });

        for (final option in menuOptions) {
            appRoutes.addAll({ option.route: (BuildContext context) => option.screen });
        }

        return appRoutes;
    }

    // static Map<String, Widget Function(BuildContext)> routes = {
    //     'home': (BuildContext context) => const HomeScreen(),
    //     'listview1': (BuildContext context) => const Listview1Screen(),
    //     'listview2': (BuildContext context) => const Listview2Screen(),
    //     'alert': (BuildContext context) => const AlertScreen(),
    //     'card': (BuildContext context) => const CardScreen(),
    // };

    static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => const HomeScreen() );
    }

}