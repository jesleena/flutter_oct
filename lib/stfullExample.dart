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
  Color? bg;
  bool showBulb = false;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bulb Tapped:$counter"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bg = Colors.pink;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.pink,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bg = Colors.blue;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      bg = Colors.amber;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            foregroundColor: Colors.yellow,
            backgroundColor: Colors.red,
            onPressed: () {
              setState(() {
                counter++;
                if (showBulb) {
                  showBulb = false;
                } else {
                  showBulb = true;
                }
              });
            },
            child: Icon(
                showBulb ? Icons.lightbulb : Icons.lightbulb_outline_rounded)));
  }
}
/// condition? stmt1:stmt2