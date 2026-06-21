import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Custom buttons",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),

        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableButtonBox(),
              SizedBox(height: 20),
              SelectableButtonBox(),
              SizedBox(height: 20),
              SelectableButtonBox(),
              SizedBox(height: 20),
              SelectableButtonBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectableButtonBox extends StatefulWidget {
  const SelectableButtonBox({super.key});

  @override
  State<SelectableButtonBox> createState() => SelectableButtonBoxState();
}

class SelectableButtonBoxState extends State<SelectableButtonBox> {
  bool selected = false;

  void toggleSelected() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleSelected,
      child: Container(
        width: 400,
        height: 100,

        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: selected ? Colors.blue : Colors.blue.shade50,
        ),

        child: Text(
          selected ? "Selected" : "Not Selected",
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
