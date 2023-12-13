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
        backgroundColor: Colors.lightGreen,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Listview"),
        actions: [
         const Icon(Icons.camera_alt_outlined),
         const SizedBox(
            width: 20,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          PopupMenuButton(itemBuilder:(context){
            return [
             const PopupMenuItem(child: Text("New group")),
              const PopupMenuItem(child: Text("New broadcast")),
              const PopupMenuItem(child: Text("Linked devices")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          })
        ],

      ),
      body: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.lightGreen,
            shadowColor: Colors.green,
            elevation: 15,
            child: const ListTile(
              // tileColor: Colors.grey,
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
                  SizedBox(
                    width: 15,
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
              subtitle: Wrap(children: [
                Icon(
                  Icons.done_all,
                  color: Colors.blue,
                ),
                Text("Hi...")
              ]),
              trailing: Column(children: [
                Text("yesterday"),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                )
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
