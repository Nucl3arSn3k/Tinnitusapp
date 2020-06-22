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
    return Scaffold(
        appBar: AppBar(
          title: Text('About the app'),
        ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('This URL is a placeholder for when the premium app version is uploaded'),
            RaisedButton(
              onPressed: _launchURL,
              child: Text('Go to upgrade app'),
            ),
          ],
        )));
  }

  _launchURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.google.android.wearable.app&hl=en_US';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
