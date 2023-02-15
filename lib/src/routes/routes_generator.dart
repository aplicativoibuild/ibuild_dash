import 'package:flutter/material.dart';

import '../ui/external_subscribers/presentation/pages/external_subscribers_page.dart';
import '../ui/home/presentation/screens/home_screen.dart';
import 'routes_model.dart';

///Gerencia o direcionamento de cada rota do aplicativo
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(),
            settings: const RouteSettings(name: 'HomeScreen'));
      case Routes.externalSubscribers:
        return MaterialPageRoute(
            builder: (_) => const ExternalSubscribersPage(),
            settings: const RouteSettings(name: 'ExternalSubscribersPage'));
      // case Routes.scheduleNotification:
      //   var data = settings.arguments as String;
      //   return MaterialPageRoute(builder: (_) =>  ScheduleNotification(message: data),settings: const RouteSettings(name: 'ScheduleNotification'));
    }
    return MaterialPageRoute(builder: (_) => const HomeScreen());
  }
}