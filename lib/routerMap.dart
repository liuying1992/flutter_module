import 'package:flutter/material.dart';

Widget routerMap(String router) {
  switch (router) {
    case 'homePage':
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: new Text('homePage'),
            centerTitle: true,
          ),
          body: Center(
            child: Text('Flutter page from native  router = $router'),
          ),
        ),
      );
    default:
      return new Center(child: Text('No RouterPath  router = $router'));
  }
}
