/* import 'package:flutter/widgets.dart';
import '../screens/home_screen.dart';
// import '../screens/details_screen.dart';
import '../screens/settings_screen.dart';


class AppRoutes {
  static const String home = '/home';
  static const String details = 'details';
  static const String settings = 'settings';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context)=> HomeScreen(),
      details: (context) => Center(child: Text('Details Screen')),
      settings: (context)=> SettingsScreen(),
      //instanciar el widget 
    };
  }
} */

import 'package:flutter_demo_rutas/screens/details_screens.dart';
import 'package:flutter_demo_rutas/screens/home_screen.dart';
import 'package:flutter_demo_rutas/screens/settings_screen.dart';
import 'package:flutter_demo_rutas/screens/form_screen.dart';
import 'package:go_router/go_router.dart';

final appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(path: '/details', builder: (context, state) => DetailsScreen()),
    GoRoute(
      path: '/settings',
      builder: (context, state) => SettingsScreen(),
      routes: [
        GoRoute(path: 'form', builder: (context, state) => FormScreen()),
      ],
    ),
  ]
);