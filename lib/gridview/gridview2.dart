import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview2(),
  ));
}

class Gridview2 extends StatelessWidget {
 var img=["assets/images/pic1.jpg",
 "assets/images/pic2.jpg",
 "assets/images/pic3.jpg",
 "assets/images/pic4.jpg",
 "assets/images/pic5.jpg",
   "assets/images/pic1.jpg",
   "assets/images/pic2.jpg",
   "assets/images/pic3.jpg",
   "assets/images/pic4.jpg",
   "assets/images/pic5.jpg",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView-maxCrossAxis"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120, mainAxisSpacing: 2, crossAxisSpacing: 2,),
        children: List.generate(
            10,
            (index) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img[index]),
                          fit: BoxFit.fill)),
                )),
      ),
    );
  }
}
