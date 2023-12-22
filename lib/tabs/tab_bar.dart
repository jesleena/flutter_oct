import 'package:flutter/material.dart';
import 'package:flutter_october/gridview/gridview2.dart';
import 'package:flutter_october/listview/listview2.dart';

void main() {
  runApp(MaterialApp(home: TabbarEx()));
}

class TabbarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            bottom: TabBar(tabs: [
              Tab(
                child: Icon(Icons.group),
              ),
              Tab(child: Text("Chat")),
              Tab(child: Text("Updates")),
              Tab(child: Text("Call")),
            ]),
          ),
          body: TabBarView(children: [
            Center(child: Text("hi")),
            Listview2(),
            Icon(Icons.favorite),
            Gridview2()
          ]),
        ));
  }
}
