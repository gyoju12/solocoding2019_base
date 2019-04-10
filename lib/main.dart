import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

void main() => runApp(MyApp());

// This widget is the root of your application.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // set material design app
    return MaterialApp(
      title: 'solocoding2019', // application name
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('계산기'), // app bar title
        ),
        body: _containerButtons(),
      ),
    );
  }

  Widget _containerButtons() => Container(
    child: Row(
      children: <Widget>[
        _containerNumbers(),
        _containerOperators()
      ],
    ),
  );

  Widget _containerNumbers() => Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          FlatButton(
            child: Text("7"),
          ),
          FlatButton(
            child: Text("8"),
          ),
          FlatButton(
            child: Text("9"),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          FlatButton(
            child: Text("4"),
          ),
          FlatButton(
            child: Text("5"),
          ),
          FlatButton(
            child: Text("6"),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          FlatButton(
            child: Text("3"),
          ),
          FlatButton(
            child: Text("2"),
          ),
          FlatButton(
            child: Text("1"),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          FlatButton(
            child: Text("7"),
          ),
          FlatButton(
            child: Text("8"),
          ),
          FlatButton(
            child: Text("9"),
          ),
        ],
      ),
      Row(
        children: <Widget>[
          FlatButton(
            child: Text("0"),
          ),
          FlatButton(
            child: Text("."),
          ),
          FlatButton(
            child: Text("="),
          ),
        ],
      ),
    ],
  );

  Widget _containerOperators() => Column(
    children: <Widget>[
      FlatButton(
        child: Text("<="),
      ),
      FlatButton(
        child: Text("/"),
      ),
      FlatButton(
        child: Text("*"),
      ),
      FlatButton(
        child: Text("-"),
      ),
      FlatButton(
        child: Text("+"),
      ),
    ],
  );
}
