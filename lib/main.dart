import 'package:flutter/material.dart';

import 'package:basics/gradient_container.dart';

void main() {
  //defining a function
  runApp(
    const MaterialApp(
      home: Scaffold(body: GradientContainer([Color.fromARGB(255, 85, 13, 153), Color.fromARGB(255, 177, 175, 215)])),
    ),
  );
}
