// FirstScreen.dart
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => new _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  AudioPlayer advancedPlayer = AudioPlayer();
  
  @override
  void initState() {
    super.initState();
    

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Tab 1 Layout'),
      ),
    );
  }
}// TODO Implement this library.