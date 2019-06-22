import 'package:flutter/material.dart';
import 'package:ownthetone/Constants.dart';
import 'package:ownthetone/pages/FirstScreen.dart';

void main() => runApp(MaterialApp(title: "Own the Tone", home: MainPersistentTabBar()));

class MainPersistentTabBar extends StatefulWidget {
  @override
  _MainPersistentTabBarState createState() => _MainPersistentTabBarState();
}

class _MainPersistentTabBarState extends State<MainPersistentTabBar>{
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
            bottom:TabBar(
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
                itemBuilder: (BuildContext context){
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
              FirstScreen(),
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
  void _choiceAction(String choice){
    if (choice == Constants.about){
      Navigator.of(context).push(
      new MaterialPageRoute(
          builder: (context){
            return new Scaffold(
              appBar: new AppBar(
                title: new Text('About the app'),
              ),
              body: new PageView(
                
              ),
            );
    }
  )
  );
  }
    else if (choice == Constants.settings){
      Navigator.of(context).push(
      new MaterialPageRoute(
          builder: (context){
            return new Scaffold(
              appBar: new AppBar(
                title: new Text('Settings'),
              ),
              body: new Container(
                child: Center(
                  child: Text('placeholder'),
                
                )
                ),
              
              );
            
    }
  )
  );
  } 
}
}