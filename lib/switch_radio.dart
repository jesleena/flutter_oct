import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Switch_Radio(),
  ));
}

class Switch_Radio extends StatefulWidget {
  @override
  State<Switch_Radio> createState() => _Switch_RadioState();
}

class _Switch_RadioState extends State<Switch_Radio> {
  bool result = false;
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch & Radio"),
      ),
      body: Column(children: [
        Switch(
          inactiveThumbImage: AssetImage("assets/icons/egg1.png"),
          activeThumbImage: AssetImage("assets/icons/bird.png"),
            inactiveThumbColor: Colors.white,
            activeColor: Colors.white,
            value: result,
            onChanged: (bool value1) {
              setState(() {
                result = value1;
              });
            }),
        ListTile(
          title: Text("Dart"),
          leading: Radio(
              value: 1,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              }),
        ),
        ListTile(
          title: Text("C++"),
          leading: Radio(
              value: 2,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              }),
        ),
        ListTile(
          title: Text("Java"),
          leading: Radio(
              value: 3,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              }),
        )
      ]),
    );
  }
}
