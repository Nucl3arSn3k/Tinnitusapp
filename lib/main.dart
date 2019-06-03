import 'package:flutter/material.dart';
import 'package:tinnitusapp/Constants.dart';

void main() => runApp(MaterialApp(title: "Own the Tone", home: MainPersistentTabBar()));

class MainPersistentTabBar extends StatefulWidget {
  @override
  _MainPersistentTabBarState createState() => _MainPersistentTabBarState();
}

class _MainPersistentTabBarState extends State<MainPersistentTabBar>{
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
              Center(child: Text("Sample one")),
              Center(child: Text("Sample two")),
              Center(child: Text("Sample three"))
            ],
          ),
        ),
      ),
    );
  }
  void _choiceAction(String choice){
    if (choice == Constants.about){
      Navigator.of(context).push(
      new MaterialPageRoute(
          builder: (context){
            return new Scaffold(
              appBar: new AppBar(
                title: new Text('About the app'),
              ),
              body: new PageView(),
            );
    }
  )
  );
  }



  } 
}
