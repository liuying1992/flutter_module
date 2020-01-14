import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/home/homePage.dart';

//void main() => runApp(routerMap(window.defaultRouteName));

void main() {
  runApp(new MaterialApp(
    routes: <String, WidgetBuilder>{
      'homePage': (BuildContext context) => new HomePage(),
      'indexPage': (BuildContext context) => new HomePage(),
    },
    home: new HomePage(),
  ));
  if (Platform.isAndroid) {
// 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
