import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview2(),
  ));
}

class Listview2 extends StatelessWidget {
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
  var images = [
    "assets/icons/icon1.png",
    "assets/icons/icon2.png",
    "assets/icons/icon3.png",
    "assets/icons/icon4.png",
    "assets/icons/icon5.png",
    "assets/icons/icon6.png",
    "assets/icons/icon1.png",
    "assets/icons/icon2.png",
    "assets/icons/icon3.png",
    "assets/icons/icon4.png",
    "assets/icons/icon5.png",
    "assets/icons/icon6.png",
  ];
  var icons=[
    Icons.done_all,
    Icons.message,
    Icons.message,
    Icons.done_all,
    Icons.message,
    Icons.message,
    Icons.done_all,
    Icons.message,
    Icons.message,
    Icons.done_all,
    Icons.message,
    Icons.message,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview list.generate"),
      ),
      body: ListView(
          children: List.generate(
              12,
              (index) => Card(
                    child: ListTile(
                      leading: Image.asset(images[index]),
                      title: Text(name[index]),
                      subtitle: Icon(icons[index]),
                      trailing: CircleAvatar(backgroundColor: Colors.green,),
                    ),
                  ))),
    );
  }
}
