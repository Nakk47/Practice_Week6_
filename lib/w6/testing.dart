// import 'package:flutter/material.dart';

// void main() {

//   void onPress(){
//     print("hello");
//   }
//   runApp(
//     MaterialApp(
//       title: 'My app',
//       home: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextButton(
//             onPressed: onPress,
//             child: const Text(
//               "Press me",
//               style: TextStyle(fontSize: 50),
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }
// import 'package:flutter/material.dart';

// void main() {
//   void onPress() {
//     print("hello");
//   }

//   runApp(
//     MaterialApp(
//       title: 'My app',
//       home: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextButton(
//             onPressed: onPress,
//             child: const Text("Press me", style: TextStyle(fontSize: 50)),
//           ),
//         ],
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';



void onTap() {
  // TODO
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            color: Colors.purple,
            child: Center(
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Image.asset("assets/download.png",height: 100,),
                  SizedBox(height: 20,),
                  TextButton(onPressed: onTap, child: Text("CLICK",style: TextStyle(color: Colors.amber),)),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
