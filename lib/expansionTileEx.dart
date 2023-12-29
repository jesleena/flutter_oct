import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionTileEx(),
  ));
}

class ExpansionTileEx extends StatelessWidget {
  var colors=[Colors.pink,Colors.red,Colors.purpleAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: ListView(
        children:[ ExpansionTile(backgroundColor: Colors.yellow,
          title: Text("Tile1"),
          subtitle: Text("Colors"),
          children: List.generate(
              3,
              (index) => ListTile(

                    leading: CircleAvatar(
                      backgroundColor: colors[index],
                    ),
                  )),
        ),
          ExpansionTile(
            backgroundColor: Colors.cyan,
            title: Text("Tile2"),
            subtitle: Text("Colors"),
            children: List.generate(
                3,
                    (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: colors[index],
                  ),
                )),
          ),
          ExpansionTile(
            title: Text("Tile3"),
            subtitle: Text("Colors"),
            children: List.generate(
                3,
                    (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: colors[index],
                  ),
                )),
          ),]
      ),
    );
  }
}
