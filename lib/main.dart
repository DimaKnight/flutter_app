import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.amber,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random _r = new Random();
  static int r = 255, g = 255, b = 255;
  Color _color = Color.fromARGB(255, r, g, b);

  void _changeColor() {
    setState(() {
      r = _r.nextInt(255);
      g = _r.nextInt(255);
      b = _r.nextInt(255);
      _color = Color.fromARGB(255, r, g, b);
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return new Container(
        child: new FlatButton(
            onPressed: _changeColor,
            color: _color,
            child: new Text(
              'I want a job at Solid Software\n'
                  '$r  $g  $b',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.display1,
              textScaleFactor: 0.8,
            )));
  }
}
