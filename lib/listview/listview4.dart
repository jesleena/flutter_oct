import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview4(),
  ));
}

class Listview4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview seperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) =>
              Card(color: Colors.lightGreen,
                child: Image.asset("assets/icons/flower.png"),
              ),
          separatorBuilder: (context, index) {
            if(index%4==0){
            return const Card(color: Colors.red,
            child: Text("advertisement"),);}
           return const SizedBox(height: 5,);
            },

          itemCount: 15),
    );
  }
}
