import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SliverEx(),
  ));
}

class SliverEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/pic10.jpg",fit: BoxFit.cover,),

            ),
            pinned: true,
           // floating: true,
            elevation: 5,
            title: Text("SliverExample"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(hintText: "search"),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) => Card(
                        child: Center(child: Text("hi")),
                        color: Colors.pinkAccent,
                      ))),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ),
          SliverGrid(
              delegate:
                  SliverChildBuilderDelegate(
                          childCount: 15,(context, index) => Container(
                        color: Colors.green,
                      )),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: 5,crossAxisSpacing: 5,
                  crossAxisCount: 4))
        ],
      ),
    );
  }
}
