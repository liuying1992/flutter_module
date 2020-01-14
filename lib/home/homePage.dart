import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_module/widget/dialog.dart';

BuildContext mContext;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _RouterAppPageState();
  }
}

class _RouterAppPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    mContext = context;
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.pink),
      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('HomePage'),
//          centerTitle: true,
//        ),
        body: new ListView(
          children: [
            new Image.asset(
              'images/lake.jpg',
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

// 标题模块
  Widget titleSection = new Container(
    padding: const EdgeInsets.all(32.0),
    child: new Row(
      children: [
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                )),
            new Text(
              'Kandersteg, Switzerland',
              style: new TextStyle(color: Colors.grey[500]),
            )
          ],
        )),
        new Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        new Text(
          '100',
          style: new TextStyle(color: Colors.pink),
        )
      ],
    ),
  );

  //图标模块
  Widget buttonSection = new Container(
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new GestureDetector(
            onTap: () {
              _showDialog("拨打电话");
            },
            child: buildButtonColumn(Icons.call, 'CALL')),
        new GestureDetector(
            onTap: () {
              _showDialog("导航");
            },
            child: buildButtonColumn(Icons.near_me, 'ROUTER')),
        new GestureDetector(
            onTap: () {
              _showDialog("分享到");
            },
            child: buildButtonColumn(Icons.share, 'SHARE')),
      ],
    ),
  );

//文本
  Widget textSection = new GestureDetector(
    onTap: () {
      showAlertDialog(
          mContext,
          "提示",
          "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。",
          "确定",
          "取消");
    },
    child: new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    ),
  );
}

_showDialog(String title) {
  showAlertDialog(
      mContext,
      title,
      "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。",
      "确定",
      "取消");
}

Column buildButtonColumn(IconData icon, String title) {
  return new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      new Icon(icon, color: Colors.green[500]),
      new Container(
        margin: const EdgeInsets.only(top: 10),
        child: new Text(
          title,
          style: new TextStyle(
              color: Colors.green[500],
              fontSize: 12.0,
              fontWeight: FontWeight.w400),
        ),
      )
    ],
  );
}
