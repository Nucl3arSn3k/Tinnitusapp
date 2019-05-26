import 'package:flutter/material.dart';

void main() => runApp(new MainPersistentTabBar());

class MainPersistentTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Session 1"),
                Tab(text: "Session 2"),
                Tab(text: "Session 3"),
              ],
            ),
            title: Text('App Tab Demo'),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text("Sample one")),
              Center(child: Text("Sample two")),
              Center(child: Text("Sample three"))
            ],
          ),
        ),
      ),
    );
  }
}
