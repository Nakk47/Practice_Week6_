
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Container(
    color: Colors.blue[300],
    padding: EdgeInsets.all(50),
    margin: EdgeInsets.all(80),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: Text("CADT STUDENT"
      ,style: TextStyle(
        fontSize: 30,
        color:Colors.white
      ),))
    ),
    
  )));
}
