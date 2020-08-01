import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:charts_flutter/flutter.dart';

class Stats extends StatefulWidget {
  @override
  _settingsstate createState() => new _settingsstate();
}

class _settingsstate extends State<Stats> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Usage Statistics'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text('placeholder'),
        ],
      )),
    );
  }
}
