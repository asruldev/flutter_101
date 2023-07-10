import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.3,
          child: Image.asset("assets/images/dice-1.png",)
        ),
        const SizedBox(height: 20,),
        const Text(
          "Quizzz",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
          ),
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.purple,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start"),
          )
      ],
    ));
  }
}