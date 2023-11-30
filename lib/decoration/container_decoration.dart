import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContainerDec(),
  ));
}

class ContainerDec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Decoration"),
      ),
      body: Center(
        child: Container(
          width: 370,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.yellow,
              image: DecorationImage(
                  image: AssetImage("assets/images/pic5.jpg"),
                 fit: BoxFit.fill
              )),
          // color: Colors.amber,
          child: Icon(
            Icons.favorite,
            size: 90,color: Colors.white,
          ),
        ),
      ),
    );
  }
}
