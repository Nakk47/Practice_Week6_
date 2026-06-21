import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AppScreen()));
}

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      if (diceNumber == 1) {
        diceNumber = 2;
      } else if (diceNumber == 2) {
        diceNumber = 3;
      } else if (diceNumber == 3) {
        diceNumber = 4;
      } else if (diceNumber == 4) {
        diceNumber = 5;
      } else if (diceNumber == 5) {
        diceNumber = 6;
      } else {
        diceNumber = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/dice-$diceNumber.png", width: 300),
              SizedBox(height: 20),
              TextButton(
                onPressed: rollDice,
                child: Text(
                  "ROLL DICE",
                  style: TextStyle(color: Colors.white, fontSize: 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
