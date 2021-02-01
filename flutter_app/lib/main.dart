import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ImageAndIconRoute.dart';

void main() => runApp(new MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //title: 'Advisor',
      home: new Scaffold(
          appBar: new AppBar(
              backgroundColor: Colors.white,
              title: new Text('Advisor',
                  style: TextStyle(
                      fontSize: 28.0,
                      foreground: Paint()
                        ..shader = LinearGradient(colors: [
                          Color.fromARGB(255, 143, 56, 157),
                          Color.fromARGB(255, 118, 83, 197),
                        ]).createShader(Rect.fromLTWH(0, 0, 30, 0)),
                      fontWeight: FontWeight.w500))),
          body: ImageAndIconRoute()),
    );
  }
}

