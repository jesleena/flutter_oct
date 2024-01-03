import 'package:flutter/material.dart';
import 'package:flutter_october/listview/listview2.dart';
import 'package:flutter_october/myWidget.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview4(),
  ));
}

class Gridview4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview-Builder-fixedCrossAxixCount"),
      ),
      body: GridView.builder(
          itemCount: 20,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) => MyWidget(
                label: Text("hello"),
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Listview2()));
                },
                bgcolor: Colors.cyan,
                image: Image.asset("assets/images/pic5.jpg"),
              )
          
          ),
    );
  }
}
