import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body:
            // YOUR
            Column(
              children: [
                
                Row(
                  
                  children: [
                    
                    Container(
                      color: Colors.blue,
                      height: 50,
                      width: 50,
                    ),
                     Container(
                      color: Colors.yellow,
                      height: 50,
                      width: 100,
                    ),
                     Expanded(child: Container(
                height: 50,
                color: Colors.blue),
                )
                 ,Container(
                      color: Colors.yellow,
                      height: 50,
                      width:100,
                    ),
                     Container(
                      color: Colors.blue,
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      height: 500,
                      color: Colors.green,
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Container(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                          ),
                          SizedBox(height: 50,),
                          Container(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                          ),
                          SizedBox(height: 50),
                          Container(height: 60, width: 60, color: Colors.white)
                        ],
                      ),
                     
                    ),
                    SizedBox(width: 10,),
                     Expanded(child: Container(height: 500, color: Colors.orange))
                  ],
                )
                
              ],
              
            ),
      ),
    ),
  );
}
