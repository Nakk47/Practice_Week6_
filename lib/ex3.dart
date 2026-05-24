
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Container(
    padding: EdgeInsets.all(25),
    child: Column(
      children: [
        Container(
          width:700,
          margin: EdgeInsets.symmetric(vertical: 20), 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: Colors.blue[100]
          ),
          child: Center(
            child: Text("OOP",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          ),
        ),
          Container(
              width: 700,
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.blue[300],
              ),
              child: Center(
                child: Text(
                  "DART",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          Container(
              width: 700,
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.purple
                ])
              ),
              child: Center(
                child: Text(
                  "FLUTTER",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
      ],
    ),
  )));
}
