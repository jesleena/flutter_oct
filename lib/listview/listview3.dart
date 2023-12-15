import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listview3(),));
}
class Listview3 extends StatelessWidget {
  var name = [
    "anu",
    "binu",
    "ciya",
    "dona",
    "emma",
    "faya",
    "gia",
    "anu",
    "binu",
    "ciya",
    "dona",
    "emma",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Builder"),),
      body: ListView.builder(
       itemCount: name.length,
          itemBuilder: (context, index)=>Card()
    ),);
  }
}

