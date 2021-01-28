import 'package:flutter/material.dart';
import 'package:ownthetone/UI/Constants.dart';
import 'package:ownthetone/pages/0Screen.dart';
import 'package:ownthetone/pages/1Screen.dart';
import 'package:ownthetone/UI/abouttheapp.dart';
import 'package:ownthetone/UI/settings.dart';

import 'package:shared_preferences/shared_preferences.dart';
//import 'package:firebase_analytics/observer.dart';
import 'package:ownthetone/main.dart';

void main() =>
    runApp(MaterialApp(title: "Own the Tone", home: MainPersistentTabBar2()));

class MainPersistentTabBar2 extends StatefulWidget {
  @override
  MainPersistentTabBarState2 createState() => MainPersistentTabBarState2();
}

class MainPersistentTabBarState2 extends State<MainPersistentTabBar2> {
  Brightness brightness;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("Session 1"),
                ),
                Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("Session 2"),
                ),
                Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("Session 3"),
                ),
                Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("Session 4"),
                ),
              ],
            ),
            title: Text('Own The Tone '),
            actions: <Widget>[
              PopupMenuButton<String>(
                onSelected: _choiceAction,
                itemBuilder: (BuildContext context) {
                  return Constants.choices.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              )
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              ZeroPage(),
              Center(child: Text("Sample two")),
              Center(child: Text("Sample three")),
              Center(child: Text("Sample four")),
            ],
          ),
        ),
      ),
    );
  }

  // This area controls the settings menus
  void _choiceAction(String choice) {
    if (choice == Constants.about) {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => AboutTheApp()));
    } else if (choice == Constants.settings) {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => Settings()));
    }
  }
}
