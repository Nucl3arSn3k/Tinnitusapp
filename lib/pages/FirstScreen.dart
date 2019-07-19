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

const flutaud1 = 'https://archive.org/details/flutaud1_20190703';

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
    return SingleChildScrollView(
      child: _tab([
        Text('Play Local Asset \'Waterfall 1000 hz\':'),
        _btn('Play', () => audioCache.play('waterfall 1000 hz.mp3')),
        Text('Play Local Asset \'Waterfall 2000 hz\':'),
        _btn('Loop', () => audioCache.play('waterfall 2000 hz.mp3')),
        Text('Play Local Asset \'Waterfall 3000 hz\':'),
        _btn('Play', () => audioCache.play('waterfall 3000 hz.mp3')),
        Text('Play Local Asset \'Waterfall 4000 hz\':'),
        _btn('Play', () => audioCache.play('waterfall 4000 hz.mp3')),
        Text('Play Local Asset \'Waterfall 5000 hz\':'),
        _btn('Play', () => audioCache.play('waterfall 5000 hz.mp3')),
        Text('Play Local Asset \'Waterfall 6000 hz\':'),
        _btn('Play', () => audioCache.play('waterfall 6000 hz.mp3')),
    ])
    );
  }

  




}// TODO Implement this library.