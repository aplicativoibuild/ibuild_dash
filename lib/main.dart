import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'firebase_options.dart';
import 'src/routes/routes_generator.dart';
import 'src/routes/routes_model.dart';

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
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Dashboard Ibuild',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          navigatorKey: navKey,
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: Routes.home),
    );
  }
}
