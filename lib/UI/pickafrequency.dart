import 'dart:async';
import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ownthetone/UI/player_widget.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ownthetone/UI/homepage1.dart';
import 'package:ownthetone/UI/homepage2.dart';
import 'package:ownthetone/UI/homepage3.dart';
import 'package:ownthetone/UI/homepage4.dart';
import 'package:ownthetone/UI/homepage5.dart';

const flutaud1 =
    'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/093232dd0c4';
const flutaud2 =
    'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/6cf6381994c';
const flutaud3 =
    'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/c0c5e7e7e6c';
const flutaud4 =
    'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/8e72bcde511';
const flutaud5 =
    'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/f5a979a4df8';
const flutaud6 =
    'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/33efed08ae8';
void main() => runApp(new MaterialApp(
        title: "TestAudio",
        initialRoute: '/audio_selection',
        routes: {
          '/audio_selection': (context) => AudioSelection(),
          '/1000hz_route': (context) => MainPersistentTabBar1(),
          '/2000hz_route': (context) => MainPersistentTabBar2(),
          '/3000hz_route': (context) => MainPersistentTabBar3(),
          '/4000hz_route': (context) => MainPersistentTabBar4(),
          '/5000hz_route': (context) => MainPersistentTabBar5(),
        }));

class AudioSelection extends StatefulWidget {
  @override
  IntroScreenstate2 createState() => IntroScreenstate2();
}

class IntroScreenstate2 extends State<AudioSelection> {
  Widget _tab(List<Widget> children) {
    return Center(
        child: new Container(
      child: new SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: children
              .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
              .toList(),
        ),
      ),
    ));
  }

  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
        minWidth: 48.0,
        child: RaisedButton(child: Text(txt), onPressed: onPressed));
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
            child: _tab([
      Text(
        'Waterfall 1000 HZ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      PlayerWidget(url: flutaud1),
      new MaterialButton(
        child: new Text('Select 1000 hz'),
        onPressed: () {
          //buttonstatus = false;
          //checkFirstSeen();
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => MainPersistentTabBar1()));
        },
      ),
      //Sample 2
      Text(
        'Waterfall 2000 HZ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      PlayerWidget(url: flutaud2),
      new MaterialButton(
        child: new Text('Select 2000 hz'),
        onPressed: () {
          //buttonstatus = false;
          //checkFirstSeen();
          Navigator.push(context,new MaterialPageRoute(builder: (context)=> MainPersistentTabBar2()));
        },
      ),
      //Sample 3
      Text(
        'Waterfall 3000 HZ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      PlayerWidget(url: flutaud3),
      new MaterialButton(
        child: new Text('Select 3000 hz'),
        onPressed: () {
          //buttonstatus = false;
          //checkFirstSeen();
          Navigator.push(context,new MaterialPageRoute(builder: (context)=> MainPersistentTabBar3()));
        },
      ),
      //Sample 4
      Text(
        'Waterfall 4000 HZ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      PlayerWidget(url: flutaud4),
      new MaterialButton(
        child: new Text('Select 4000 hz'),
        onPressed: () {
          //buttonstatus = false;
          //checkFirstSeen();
          Navigator.push(context,new MaterialPageRoute(builder: (context)=> MainPersistentTabBar4()));
        },
      ),
      //Sample 5
      Text(
        'Waterfall 5000 HZ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      PlayerWidget(url: flutaud5),
      new MaterialButton(
        child: new Text('Select 5000 hz'),
        onPressed: () {
          //buttonstatus = false;
          //checkFirstSeen();
          Navigator.push(context,new MaterialPageRoute(builder: (context)=> MainPersistentTabBar5()));
        },
      ),
      //Sample 6
      Text(
        'Waterfall 6000 HZ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      PlayerWidget(url: flutaud6),
      new MaterialButton(
        child: new Text('Select 6000 hz'),
        onPressed: () {
          //buttonstatus = false;
          //checkFirstSeen();
          Navigator.pushNamed(context, '/homescreen_route');
        },
      )
    ])));
  }
}
