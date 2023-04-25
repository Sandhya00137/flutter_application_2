import 'dart:math';

import 'package:flutter/material.dart';

import './styled.dart';

final randomizer = Random();

class DiceRolling extends StatefulWidget {
  const DiceRolling({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRolling();
  }
}

class _DiceRolling extends State<DiceRolling> {
  // var activeImage = 'assets/dice-images/dice-1.png';
  var currentRollNumber = 3;

  void rollDice() {
    // var rollDiceNumber = Random().nextInt(6) + 1;
    setState(() {
      currentRollNumber = randomizer .nextInt(6) + 1;
      // activeImage = 'assets/dice-images/dice-$rollDiceNumber.png';
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Image.asset(activeImage, width: 220),
        Image.asset('assets/dice-images/dice-$currentRollNumber.png',
            width: 220),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          // () {} // Anonymous function // one way
          //  style: TextButton.styleFrom(
          //   padding: EdgeInsets.only(top: 20),
          // )
          child: const StyledText('Rolled Dice'),
        )
      ],
    );
  }
}
