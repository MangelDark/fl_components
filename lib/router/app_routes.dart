
import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {

  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'listview1', icon: Icons.list_alt, name: 'List View 1 Screen', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.line_style_outlined, name: 'List View 2 Screen', screen: const ListView2Screen()),
    MenuOption(route: 'alertScreen', icon: Icons.info, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.card_membership, name: 'Card Screen', screen: const CardScreen()),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
     Map<String, Widget Function(BuildContext)> appRoutes = {};    
     for (final option in menuOptions) {
       appRoutes.addAll({option.route : (BuildContext context) =>  option.screen });
     }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'          : ( BuildContext context) => const HomeScreen(),
  //       'listview1'     : ( BuildContext context) => const ListView1Screen(),
  //       'listview2'     : ( BuildContext context) => const ListView2Screen(),
  //       'alertScreen'   : ( BuildContext context) => const AlertScreen(),
  //       'card'          : ( BuildContext context) => const CardScreen(),
  //     };

  static Route<dynamic> onGenerateRoute (settings)  {
        return MaterialPageRoute(builder: (builder)=> const HomeScreen());
      }
}