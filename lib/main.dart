
import 'package:flutter/material.dart';
import 'package:ibuild_dash/src/routes/routes_generator.dart';
import 'package:ibuild_dash/src/routes/routes_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard Ibuild',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
     initialRoute: Routes.home
     
    );
  }
}

