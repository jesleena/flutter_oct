import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: DrawerEx(),));
}
class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("drawer"),),
      drawer: Drawer(
        backgroundColor: Colors.purpleAccent,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/pic11.jpg"),fit: BoxFit.fill)),
                accountName: Text("Luminar"),
                accountEmail: Text("Luminar@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/pic2.jpg"),),
            otherAccountsPictures: [
              CircleAvatar(backgroundImage: AssetImage("assets/images/pic4.jpg"),),
              CircleAvatar(backgroundImage: AssetImage("assets/images/pic3.jpg"),),
             // Image.asset("assets/images/pic3.jpg"),
              //Image.asset("assets/images/pic4.jpg"),
            ],
            arrowColor: Colors.red,),
            ListTile(
             leading: Icon(Icons.person),
              title: Text("name"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
            ),ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            )
          ],
        ),
      ),
    );
  }
}
