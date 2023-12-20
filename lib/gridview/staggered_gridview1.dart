import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: Staggered_Gridview1(),));
}
class Staggered_Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered Gridview")),
      body: StaggeredGrid.count(
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        crossAxisCount: 4,
        children: [StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/pic5.jpg"),
                      fit: BoxFit.fill)),
            )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pic5.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pic5.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pic5.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pic5.jpg"),
                        fit: BoxFit.fill)),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pic5.jpg"),
                        fit: BoxFit.fill)),
              )),
        ],
      ),
    );
  }
}
