import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview1(),
  ));
}

class Listview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview"),
      ),
      body: ListView(
        children: [
          // Center(child: Text("Customer List")),
          // Image.asset("assets/icons/icon1.png"),
          // Image.asset("assets/icons/icon2.png"),
          // Image.asset("assets/icons/icon3.png"),
          // Image.asset("assets/icons/icon4.png"),
          // Image.asset("assets/icons/icon5.png"),

          const Card(
            //color: Colors.red,
            shadowColor: Colors.green,
            elevation: 15,
            child: ListTile(
              tileColor: Colors.grey,
              leading: CircleAvatar(
                  //backgroundColor: Colors.green,
                  backgroundImage: AssetImage("assets/images/pic5.jpg")),
              title: Text("Ann"),
              subtitle: Text("9876543210"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
              leading: Image.asset("assets/icons/icon2.png"),
              title: Text("Ben"),
              subtitle: Text("9876543210"),
              trailing: Wrap(children: [
                Icon(
                  Icons.message,
                  color: Colors.green,
                ),
                Icon(
                  Icons.call,
                  color: Colors.green,
                ),
              ])),

          ListTile(
            leading: Image.asset("assets/icons/icon3.png"),
            title: Text("Ciya"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon4.png"),
            title: Text("Dean"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon5.png"),
            title: Text("Ann"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon6.png"),
            title: Text("Ann"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon1.png"),
            title: Text("Ann"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon2.png"),
            title: Text("Ann"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon3.png"),
            title: Text("Ann"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon4.png"),
            title: Text("Ann"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/icon5.png"),
            title: Text("Ann"),
            subtitle: Text("9876543210"),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
