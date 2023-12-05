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
      // appBar: AppBar(
      //   title: Text("Container Decoration"),
      // ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bag3.jpg"),
               fit: BoxFit.fill
            )),
        // color: Colors.amber,
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

    Image.asset('assets/images/logo2.png',  height: 200, width: 200, ),
   // Text( "Eat healthy Stay healthy", style: GoogleFonts.pacifico(fontSize: 30,color: Colors.black), ),
    ],
    ),
      ),)
    );
  }
}
