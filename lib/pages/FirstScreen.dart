// FirstScreen.dart
import 'dart:async';
import 'dart:io';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ownthetone/UI/player_widget.dart';


const flutaud1 = 'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/093232dd0c4';
const flutaud2 = 'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/6cf6381994c';
const flutaud3 = 'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/c0c5e7e7e6c';
const flutaud4 = 'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/8e72bcde511';
const flutaud5 = 'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/f5a979a4df8';
const flutaud6 = 'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/33efed08ae8';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => new _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  AudioPlayer advancedPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  String localFilePath;

  Future _loadFile() async {
    final bytes = await readBytes(flutaud1);
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/audio.mp3');

    await file.writeAsBytes(bytes);
    if (await file.exists()) {
      setState(() {
        localFilePath = file.path;
      });
    }
  }

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
    return SingleChildScrollView(
      child: _tab([
        Text(
          'Waterfall 1000 HZ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud1),
        //Sample 2
        Text(
          'Waterfall 2000 HZ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud2),
        //Sample 3
        Text(
          'Waterfall 3000 HZ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud3),
        //Sample 4
        Text(
          'Waterfall 4000 HZ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud4),
        //Sample 5
        Text(
          'Waterfall 5000 HZ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud5),
        //Sample 6
        Text(
          'Waterfall 6000 HZ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud6),
      ])
      );
  }
} // TODO Implement this library.
