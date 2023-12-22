import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview-FixedCrossAxis"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 2, crossAxisSpacing: 2),
        children: List.generate(
            10,
            (index) => Container(
                  color:Colors.primaries[index%Colors.primaries.length],
             // color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                )),
      ),
    );
  }
}
