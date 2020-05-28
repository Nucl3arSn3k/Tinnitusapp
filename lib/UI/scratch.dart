
import 'package:flutter/material.dart';

import 'package:ownthetone/UI/player_widget.dart';

import 'package:flutter/material.dart';

import 'package:ownthetone/UI/homepage1.dart';


const flutaud1 =
    'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/093232dd0c4';

void main() => runApp(new MaterialApp(
        title: "TestAudio",
        initialRoute: '/audio_selection',
        routes: {
          '/audio_selection': (context) => AudioSelection(),
          '/1000hz_route': (context) => MainPersistentTabBar1(),
          
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

  

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
      child: _tab([
        Text(
          'Audio 1000 HZ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud1),
        new MaterialButton(
          child: new Text('Select 1000 hz'),
          onPressed: () {
            //buttonstatus = false;
            //checkFirstSeen();
            Navigator.pushNamed(context, '/1000hz_route');
          },
        ),
        
    ])
    )
    );
  
  }
}
