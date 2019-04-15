import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This widget is the root of your application.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String _displayCalculationFormula = '';

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
        body: _containerBody(),
      ),
    );
  }

  Widget _containerBody() => Container(
        child: Column(
          children: <Widget>[
            _containerOutput(),
            _containerInput()
          ],
        ),
      );

  Widget _containerOutput() => Padding(
    padding: EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Text(
            '$_displayCalculationFormula',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        DropdownMenuItem(child: Icon(Icons.more_vert),)
      ],
    ),
  );

  Widget _containerInput() => Row(
        children: <Widget>[_containerNumbers(), _containerOperators()],
      );

  Widget _containerNumbers() => Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('7'),
                onPressed: () { _inputData('7'); },
              ),
              RaisedButton(
                child: Text('8'),
                onPressed: () { _inputData('8'); },
              ),
              RaisedButton(
                child: Text('9'),
                onPressed: () { _inputData('9'); },
              ),
            ],
            mainAxisSize: MainAxisSize.max,
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('4'),
                onPressed: () { _inputData('4'); },
              ),
              RaisedButton(
                child: Text('5'),
                onPressed: () { _inputData('5'); },
              ),
              RaisedButton(
                child: Text('6'),
                onPressed: () { _inputData('6'); },
              ),
            ],
            mainAxisSize: MainAxisSize.max,
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('3'),
                onPressed: () { _inputData('3'); },
              ),
              RaisedButton(
                child: Text('2'),
                onPressed: () { _inputData('2'); },
              ),
              RaisedButton(
                child: Text('1'),
                onPressed: () { _inputData('1'); },
              ),
            ],
            mainAxisSize: MainAxisSize.max,
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('0'),
                onPressed: () { _inputData('0'); },
              ),
              RaisedButton(
                child: Text('.'),
                onPressed: () { _inputData('.'); },
              ),
              RaisedButton(
                child: Text('='),
                onPressed: () { _inputData('='); },
              ),
            ],
            mainAxisSize: MainAxisSize.max,
          ),
        ],
      );

  Widget _containerOperators() => Column(
        children: <Widget>[
          RaisedButton(
            child: Text('<='),
            onPressed: () { _inputData('Del'); },
          ),
          RaisedButton(
            child: Text('/'),
            onPressed: () { _inputData('/'); },
          ),
          RaisedButton(
            child: Text('*'),
            onPressed: () { _inputData('*'); },
          ),
          RaisedButton(
            child: Text('-'),
            onPressed: () { _inputData('-'); },
          ),
          RaisedButton(
            child: Text('+'),
            onPressed: () { _inputData('+'); },
          ),
        ],
      );

  _inputData(String data) {
    setState(() {
      if (data == '.') {
        if (_displayCalculationFormula.length <= 0 && _displayCalculationFormula.contains('.')) {
          return;
        }
      } else if (data == '=') {

      } else if (data == 'Del') {
        _displayCalculationFormula = _displayCalculationFormula.substring(0, _displayCalculationFormula.length-1);
            return;
      }
      _displayCalculationFormula += data;
    });
  }
}
