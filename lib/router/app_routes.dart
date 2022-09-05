import 'package:flutter/material.dart';
import 'package:components/screens/screens.dart';

import '../models/models.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    //MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'Listview 1', screen: const ListView1(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'Listview 2', screen: const ListView2(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Cards', screen: const CardScreen(), icon: Icons.home),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Slider & Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_outlined),
    MenuOption(route: 'listviewbuilder', name: 'InfiniteScroll & Pull to Refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});


    for (final option in menuOptions){
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }


  //static Map<String, Widget Function(BuildContext)> routes = {
  //     'alert':        (context) => const AlertScreen(),
  //     'card':         (context) => const CardScreen(),
  //     'home':         (context) => const HomeScreen(),
  //     'listview 1':   (context) => const ListView1(),
  //     'listview 2':   (context) => const ListView2(),
  //      };

       static Route<dynamic> onGenerateRoute(RouteSettings settings){
         return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
          );
      }


}