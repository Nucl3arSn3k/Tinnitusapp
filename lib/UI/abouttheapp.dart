import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutTheApp extends StatefulWidget {
  @override
  _Abouttheappstate createState() => new _Abouttheappstate();
}

class _Abouttheappstate extends State<AboutTheApp> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About The App'),
      ),
      body: new Container(
        child: Center(
        //child: Text('upgrade app'),
        child: RaisedButton(
          onPressed: _launchURL,
          child: new Text('Go to upgrade app'),
        ),
      )
      ),
    );
  }
  _launchURL() async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
}