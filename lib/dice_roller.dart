import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); //call the function below
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 'assets/dice-images/dice-2.png'; //start at img 2

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1; //this creates a "Random" and put it into the memory. It is beter if Random() be a variable (final)
    setState(() {// need this so it can repeat it tells to reexecute the build function
      currentDiceImage = 'assets/dice-images/dice-$diceRoll.png'; //the diceRoll is the random variable
     //randomly pick a number for the dicw image
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(currentDiceImage, width: 300), // make a random diceRoll from the images
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}//underscore means private