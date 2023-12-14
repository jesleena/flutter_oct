import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listview3(),));
}
class Listview3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Builder"),),
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (context, index)=>Card(
        child: Text("hello"),
      )
    ),);
  }
}
