import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview6(),));
}
class Gridview6 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview-extend"),),
      body: GridView.extent(maxCrossAxisExtent: 120,mainAxisSpacing:5,crossAxisSpacing:5,children:List.generate(16, (index) => Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/pic12.jpg"),
    fit: BoxFit.fill)),),)),
    );
  }
}
