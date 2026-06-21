import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Custom buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableButton(),
            SizedBox(height: 16),
            SelectableButton(),
            SizedBox(height: 16),
            SelectableButton(),
          ],
        ),
      ),
    ),
  ),
);

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});
  @override
  State<SelectableButton> createState() => SelectableButtonState();
}

class SelectableButtonState extends State<SelectableButton> {
  String status = "not selected";

  @override
  Widget build(BuildContext context) {
    String label;
    Color textColor;
    Color bgColor;

    if (status == "selected") {
      label = "Selected";
      textColor = Colors.white;
      bgColor = Colors.blue[500]!;
    } else {
      label = "Not Selected";
      textColor = Colors.black;
      bgColor = Colors.blue[50]!;
    }

    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
 
            if (status == "selected") {
              status = "not selected";
            } else {
              status = "selected";
            }
          });
        },
        style: ElevatedButton.styleFrom(backgroundColor: bgColor),
        child: Text(label, style: TextStyle(color: textColor)),
      ),
    );
  }
}
