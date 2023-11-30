import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GradientEx(),
  ));
}

class GradientEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gradient"),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            // image: DecorationImage(
            // image: AssetImage("assets/images/pic5.jpg")),
            gradient: LinearGradient(
                colors: [Colors.red, Colors.blue, Colors.purple, Colors.pink],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
          ),
          child: Center(
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.s,
              children: [
                Image.asset("assets/images/bird.png",height: 100,),
                Text(
                  "My Application",
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
        ));
  }
}
