import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white70],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        padding: const EdgeInsets.all(10),
        child: const StartScreen(),
      ),
    ),
  ));
}
