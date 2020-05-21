import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'package:ownthetone/UI/homepage.dart';
bool seen;

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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:
          seen == false || seen == null ? "/intro_route" : "/homescreen_route",
      routes: {
        '/homescreen_route': (context) => MainPersistentTabBar2(),
        "/intro_route": (context) => IntroScreen(),
      },
    );
  }
}



class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Screen"),
        ),
        body: Text("First"));
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
                
                Navigator.pushNamed(context, '/homescreen_route');
              },
            )
          ],
        ),
      ),
    );
  }
}