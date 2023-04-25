import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // const StyledText(String name, {super.key}): outputText = name;
  const StyledText(this.outputText, {super.key});
   
  final String outputText;

  @override
  Widget build(BuildContext context) {
    return Text(
      outputText,
      style: const  TextStyle(
          fontSize: 30,
          fontFamily: String.fromEnvironment("Quicksand"),
          color: Color.fromARGB(255, 255, 255, 255)),
    );
  }
}
