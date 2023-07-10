import 'package:first_app/QuestionScreen.dart';
import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});
  @override
  State<Quizz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quizz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.white, Colors.white70],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
          padding: const EdgeInsets.all(10),
          child: activeScreen,
        ),
      ),
    );
  }
}
