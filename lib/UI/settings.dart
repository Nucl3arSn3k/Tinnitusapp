import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Settings extends StatefulWidget {
  @override
  _settingsstate createState() => new _settingsstate();
}

class _settingsstate extends State<Settings> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Settings'),
      ),
      body: new Container(
          child: Center(
        child: Text('placeholder'),
      )),
    );
  }
}
