import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ownthetone/UI/homepage.dart';

void main() => runApp(new MaterialApp(
        title: "TestAudio",
        initialRoute: '/intro_route',
        routes: {
          '/intro_route': (context) => IntroScreen(),
          '/homescreen_route': (context) => MainPersistentTabBar2(),
        }));

class IntroScreen extends StatefulWidget {
  @override
  IntroScreenstate2 createState() => IntroScreenstate2();
}

class IntroScreenstate2 extends State<IntroScreen> {
  bool buttonstatus = true;
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);
    prefs.setBool('seen', false);
    if (buttonstatus == false) {
      print("If loop is actually running");
      prefs.setBool('seen', true); 
    }
    
    
    print("SPLASHSTATERUNNINGAHHH");
    if (seen == true) {
      Navigator.pushNamed(context, '/homescreen_route');
      print("Homescreen bound");
    } else {
      print("Looping to intro screen");
    }
  }

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 1), () {
      print("TIMER ACTIVE");
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text('This is the placeholder for the TOS'),
            new MaterialButton(
              child: new Text('Go to Home Page'),
              onPressed: () {
                buttonstatus = false;
                if(buttonstatus != true){
                  print("Variable set");
                }
                print("Button pushed");
                checkFirstSeen();
                //Navigator.pushNamed(context, '/homescreen_route');
              },
            )
          ],
        ),
      ),
    );
  }
}
