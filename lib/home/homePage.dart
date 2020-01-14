import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RouterAppPageState();
  }
}

class _RouterAppPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Column(
        children: <Widget>[
          new Image(
            image: new AssetImage('images/lake.jpg'),
            height: 200,
          ),
          new Text('title'),
        ],
      ),
    );
  }
}
