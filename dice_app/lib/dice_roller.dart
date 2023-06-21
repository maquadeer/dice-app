import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 'assets/images/dice4.png';
  final randomizer = Random();

  void rollDice(){
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice$diceRoll.png';
    });
    

  }
  @override
  build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  activeDiceImage, 
                  width: 200,
              ),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 40),
                  foregroundColor: Colors.white, 
                  textStyle: const TextStyle(
                    fontSize: 30,
                  )
                  ),
                child: const Text('Roll Dice')
              )
            ],
            ) ;
  }
}