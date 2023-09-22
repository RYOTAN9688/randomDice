import 'dart:math';

import 'package:flutter/material.dart';

final rondomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoller> {
  int currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = rondomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('サイコロを振ってね'),
        )
      ],
    );
  }
}
