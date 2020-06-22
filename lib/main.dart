import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:ownthetone/UI/homepage.dart';
import 'package:ownthetone/UI/pickafrequency.dart';
import 'package:url_launcher/url_launcher.dart';

bool seen;
//Hey you there,if you've decompiled this app,send me a email.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  seen = await prefs.getBool("seen");
  await prefs.setBool("seen", true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Own The Tone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      initialRoute:
          seen == false || seen == null ? "/intro_route" : "/audio_selection",
      routes: {
        '/homescreen_route': (context) => MainPersistentTabBar2(),
        "/intro_route": (context) => IntroScreen(),
        '/audio_selection': (context) => AudioSelection(),
      },
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Text('This is the placeholder for the TOS'),
            new MaterialButton(
              child: new Text('Go to Home Page'),
              onPressed: () {
                print("Button pushed");

                Navigator.pushNamed(context, '/audio_selection');
              },
            )
          ],
        ),
      ),
    );
  }
}
