import 'package:flutter/material.dart';
import 'package:flutter_application_2/dice_roller.dart';

import './styled.dart';

Alignment? topAlignment;
var bottomAlignment = Alignment.center;


class LinearGradients extends StatelessWidget {
  const LinearGradients({super.key});

  // LinearGradient() {
  //   // this is constructor
  //   // initialization
  //   // comment text
  // }
 @override
  Widget build(BuildContext context) {
    topAlignment = Alignment.centerLeft;
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: const [
            Color.fromARGB(255, 154, 24, 24),
            Colors.white,
            Color.fromARGB(255, 12, 194, 210)
          ], begin: topAlignment ?? Alignment.topRight, end: bottomAlignment),
        ),
        child: const Center(
            // child: const StyledText("Hello Madam!"),
          child: DiceRolling()
        ),
      ),
    ));
  }
}
