import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink.shade50,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.pink.shade100,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {


  @override
  _DicePageState createState() => _DicePageState();
}
var leftRandom = 1;
var rightRandom = 2;
void randomDice() {
  leftRandom = Random().nextInt(6) + 1;
  rightRandom = Random().nextInt(6) + 1;
}



class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$leftRandom.png"),
              onPressed: () {
                setState(() {
                  randomDice();
                });

              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$rightRandom.png"),
              onPressed: () {
                setState(() {
                  randomDice();
                });

              },
            ),
          ),
        ],
      ),
    );
  }
}
