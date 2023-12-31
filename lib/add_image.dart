import 'package:flutter/material.dart';

void main() {
  runApp(//to attach widget tree to UI
      MaterialApp(
        //material theme
          home: FirstProgram() //initial page
      ));
}

class FirstProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //centerTitle: true,
            title: Text(
              "My First Program",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //Image(image: AssetImage("assets/images/bird.png")),
              Image.asset("assets/images/profile.png"),
              Text("My Application")
            ],
          ),
        ));
  }
}
