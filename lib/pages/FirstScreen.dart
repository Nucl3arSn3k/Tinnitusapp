// FirstScreen.dart
import 'dart:async';
import 'dart:io';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ownthetone/player_widget.dart';
import 'package:path_provider/path_provider.dart';

const flutaud1 = 'https://audio.jukehost.co.uk/694139d474ee606401cc3aa8160159ac14662cd8/093232dd0c4';

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
          'Sample 1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud1),
        Text(
          'Sample 4 (Low Latency mode) ($flutaud1)',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        PlayerWidget(url: flutaud1, mode: PlayerMode.LOW_LATENCY),
      ])
      );
  }
} // TODO Implement this library.
