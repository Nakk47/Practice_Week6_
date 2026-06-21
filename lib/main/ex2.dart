import 'package:flutter/material.dart';

enum Member {
  alex(name: "Alex", imagePath: 'assets/avatars/Alex.png'),
  daniel(name: "Daniel", imagePath: 'assets/avatars/Daniel.png'),
  ethan(name: "Ethan", imagePath: 'assets/avatars/Ethan.png'),
  jacob(name: "Jacob", imagePath: 'assets/avatars/Jacob.png'),
  noah(name: "Noah", imagePath: 'assets/avatars/Noah.png'),
  mia(name: "Mia", imagePath: 'assets/avatars/Mia.png');

  const Member({required this.name, required this.imagePath});

  final String name;
  final String imagePath;
}

class MemberCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const MemberCard({
    super.key,
    required this.title,
    required this.icon,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.asset("assets/avatars/Alex.png", width: 100, height: 100),

            const SizedBox(height: 20),

            
          ],
        ),
      ),
    );
  }
}
//  Create your stateless widget MemberCard here
//
//

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "EX-2 - Stateless Widgets",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          // REMOVE THIS CODE AND REPLACE WITH YOUR OWN CODE
          // We give here an example of CircleAvatar usage (with an image path)
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Member.alex.imagePath),
          ),
        ),
      ),
    ),
  );
}
