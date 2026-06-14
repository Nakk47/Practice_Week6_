import 'package:flutter/material.dart';

import './ui/screens/welcome_screen.dart';
import './ui/screens/temperature_screen.dart'; // Import TemperatureScreen

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  // false = show WelcomeScreen
  // true = show TemperatureScreen
  bool isStarted = false;

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff16C062), Color(0xff00BCDC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          // Decide which screen to show
          child: isStarted
              ? TemperatureScreen() // After START button is pressed
              : WelcomeScreen(
                  onStart: () {
                    setState(() {
                      // Update state and rebuild UI
                      isStarted = true;
                    });
                  },
                ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
