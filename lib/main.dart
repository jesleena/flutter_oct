import 'package:flutter/material.dart';

void main() {
  runApp(//to attach widget tree to UI
      MaterialApp(
          //material theme
          home: FirstProgram() //initial page
          ));
}

class FirstProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //centerTitle: true,
            title: Text(
          "My First Program",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image(
              //   image: AssetImage("https://plus.unsplash.com/premium_photo-1700566981992-a193442997d5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDl8SnBnNktpZGwtSGt8fGVufDB8fHx8fA%3D%3D"),
              // ),
              Image.network(
                  "https://plus.unsplash.com/premium_photo-1700566981992-a193442997d5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDl8SnBnNktpZGwtSGt8fGVufDB8fHx8fA%3D%3D"),
              Image.asset(
                "assets/images/pic5.jpg",
                height: 200,
                width: 350,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.red,
                    size: 40,
                  ),
                ],
              ),
              Text("My Application")
            ],
          ),
        ));
  }
}
