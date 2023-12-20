import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview4(),));
}
class Gridview4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview-Builder-fixedCrossAxixCount"),),
      body: GridView.builder(itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context,index)=>
              Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/pic5.jpg"),
    fit: BoxFit.fill)),)),
    );
  }
}
