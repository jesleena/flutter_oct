import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx2(),
  ));
}

class StackEx2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/32/Mc8kW4x9Q3aRR3RkP5Im_IMG_4417.jpg?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
            ),
            Positioned(top: 40,
                left: 20,
                child: Text(
              "Name",
              style: TextStyle(color: Colors.white,fontSize: 25,),
            )),
            Positioned(top: 70,
                left: 20,
                child: Text(
                  "Designation",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                )),
            Positioned(bottom: 35,
                right: 100,
                child: Wrap(
                  children:[
                    Icon(Icons.phone,color: Colors.white,),
                    Text(
                    "phno",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),]
                )),
            Positioned(bottom: 10,
                right: 100,
                child: Wrap(
                    children:[
                      Icon(Icons.email,color: Colors.white,),
                      Text(
                        "email",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),]
                ))
          ],
        ),
      ),
    );
  }
}
