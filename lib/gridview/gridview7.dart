import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Gridview7()));
}
class Gridview7 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview-Custom"),),
      body:
        GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120),
            childrenDelegate: SliverChildBuilderDelegate(childCount: 15,(context, index) =>
                Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/pic5.jpg"),
                      fit: BoxFit.fill)),)))
      // GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 4), childrenDelegate: SliverChildListDelegate(List.generate(
      //     10, (index) => Container(
      //   height: 50,
      //   width: 50,
      //   decoration: BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage("assets/images/pic5.jpg"),
      //           fit: BoxFit.fill)),)))),
    );
  }
}
