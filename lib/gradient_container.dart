import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';

import 'package:basics/styled_text.dart';

import 'package:basics/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorList, {super.key});

  final List<Color> colorList;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        // cannot use const because the variable will be changed
        gradient: LinearGradient(colors: colorList, begin: startAlignment, end: endAlignment),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
