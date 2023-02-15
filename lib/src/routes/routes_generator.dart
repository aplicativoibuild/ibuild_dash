import 'package:flutter/material.dart';
import 'package:ibuild_dash/src/routes/routes_model.dart';
import 'package:ibuild_dash/src/ui/home/presentation/screens/home_screen.dart';


///Gerencia o direcionamento de cada rota do aplicativo
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen(),settings: const RouteSettings(name: 'HomeScreen'));      
      // case Routes.scheduleNotification:
      //   var data = settings.arguments as String;
      //   return MaterialPageRoute(builder: (_) =>  ScheduleNotification(message: data),settings: const RouteSettings(name: 'ScheduleNotification'));                                          
    }
    return MaterialPageRoute(builder: (_) => const HomeScreen());
  }
}