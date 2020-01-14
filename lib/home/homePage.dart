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
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('HomePage'),
          centerTitle: true,
        ),
        body: new Center(
          child: new Text('TextView '),
        ),
      ),
    );
  }
}
