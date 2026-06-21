import 'package:flutter/material.dart';

// ___________________________________________________________________
// CASE 1
// The screen is the parent of the Container,
// it forces the Container to be exactly the same size as the screen.
// ___________________________________________________________________
// void main() {
//   runApp(MaterialApp(home: Container(color: Colors.red)));
// }




// ___________________________________________________________________
// CASE 2
// The red Container wants to be 100 × 100
// But it can’t  
// Because the screen forces it to be exactly the same size as the screen.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Container(width: 100, height: 100, color: Colors.red),
//     ),
//   );
// }





// ___________________________________________________________________
// CASE 3
// The Scaffold tells the Container can be any size it wants
//
// Now the Container can indeed be 100 × 100.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(width: 100, height: 100, color: Colors.red),
//       ),
//     ),
//   );
// }





// ___________________________________________________________________
// CASE 4
// Align tells the Container that it can be any size it wants
// It aligns the container to the bottom-right of the available space.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Align(
//         alignment: Alignment.bottomRight,
//         child: Container(width: 100, height: 100, color: Colors.red),
//       ),
//     ),
//   );
// }








// ___________________________________________________________________
// CASE 5
// The Center tells the Container that it can be any size it wants, but not bigger than the screen.
// The Container wants to be of infinite size, 
// But since it can't be bigger than the screen, it just fills the screen.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//         home: Center(
//       child: Container(
//           width: double.infinity, height: double.infinity, color: Colors.red),
//     )),
//   );
// }







// ___________________________________________________________________
// CASE 6
// The Center tells the Container that it can be any size it wants
// Since the Container has no child and no fixed size, it decides it wants to be as big as possible, so it fills the whole screen.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//         home: Center(
//       child: Container(color: Colors.red),
//     )),
//   );
// }







// ___________________________________________________________________
// CASE 7
// Since the red Container has no size but has a child,
// it decides it wants to be the same size as its child.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//         home: Center(
//       child: Container(
//         color: Colors.red,
//         child: Container(color: Colors.green, width: 30, height: 30),
//       ),
//     )),
//   );
// }






// ___________________________________________________________________
// CASE 8
// Container sizes itself to its children's size,
// but it also takes its own padding into consideration
// ___________________________________________________________________

void main() {
  runApp(
    MaterialApp(
        home: Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.red,
        child: Container(color: Colors.green, width: 30, height: 30),
      ),
    )),
  );
}