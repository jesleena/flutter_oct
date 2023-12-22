import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Row1(),));
}
class Row1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Wrap(
          children: [
            Image.asset("assets/icons/icon2.png"),
            Image.asset("assets/icons/icon2.png"),
            Image.asset("assets/icons/icon2.png"),
            Image.asset("assets/icons/icon2.png"),
            Image.asset("assets/icons/icon2.png"),
            Image.asset("assets/icons/icon2.png"),
          ],
        ),
      ),


    );
  }
}
