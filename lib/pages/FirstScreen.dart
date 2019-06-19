// FirstScreen.dart
import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ownthetone/player_widget.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => new _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  AudioPlayer advancedPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache();
  String localFilePath;

  Future _loadFile() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/audio.mp3');
  }

  Widget _tab(List<Widget> children) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: children
              .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
              .toList(),
        ),
      ),
    );
  }

  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
        minWidth: 48.0,
        child: RaisedButton(child: Text(txt), onPressed: onPressed));
  }

  
  Widget build(BuildContext context) {
    return _tab([
      Text('Play Local Asset \'audio1.wav\':'),
      _btn('Play', () => audioCache.play('audio1.wav')),
      Text('Loop Local Asset \'audio1.wav\':'),
      _btn('Loop', () => audioCache.loop('audio1.wav')),
      Text('Play Local Asset \'audio2.wav\':'),
      _btn('Play', () => audioCache.play('audio2.wav')),
    ]);
  }

  




}// TODO Implement this library.