import 'package:first_app/gradient_container.dart';
import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

class NavigationApp extends StatelessWidget {
  // This widget is the root of your application.
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/a': (context) => const GradientContainer([Colors.red, Colors.yellow]),
        '/b': (context) => const StartScreen(),
      },
      //...
    );
  }
}