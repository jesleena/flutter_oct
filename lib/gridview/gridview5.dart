import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview5(),));
}
class Gridview5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview_count"),),
      body: GridView.count(crossAxisCount: 4,children: List.generate(6, (index) => Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/pic5.jpg"),
    fit: BoxFit.fill)),),),

    ));
  }
}
