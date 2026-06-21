import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF0EFF5),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  
                  "Welcome to Superlist",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E1B3A),
                  ),
                ),
                
                SizedBox(height: 20),

                Text(
                  "Made by vathanak.",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                Text(
                  "Designed for people.",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                SizedBox(height: 50),

                Container(
                  width: 700,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E1B3A),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),

                SizedBox(height: 12),

                Container(
                  width:700,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E1B3A),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Sign in with Apple",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),

                SizedBox(height: 12),

                Container(
                  width: 700,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFDDDBE8),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Continue with email",
                    style: TextStyle(fontSize: 16, color: Color(0xFF1E1B3A)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
