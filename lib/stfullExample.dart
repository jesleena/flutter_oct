import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: STfullEx(),
  ));
}

class STfullEx extends StatefulWidget {
  @override
  State<STfullEx> createState() => _STfullExState();
}

class _STfullExState extends State<STfullEx> {
  var bg = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    bg = Colors.red;
                  });
                },
                child: Text("red")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    bg = Colors.green;
                  });
                },
                child: Text("green")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    bg = Colors.blue;
                  });
                },
                child: Text("blue")),
          ],
        ),
      ),
    );
  }
}
