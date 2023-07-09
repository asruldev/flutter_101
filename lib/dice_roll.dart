import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  var currentRandom = 1;

  void rollDice() {
    var diceRandom = Random().nextInt(6) + 1;
    setState(() {
      currentRandom = diceRandom;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRandom.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20, bottom: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              )),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
