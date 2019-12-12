import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:payan/pages/dead_line.dart';
import 'package:payan/pages/home_page.dart';
import 'package:payan/pages/main_page.dart';


class FluroRouter{
  static Router router = Router();
  static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => HomePage());
  static Handler _mainPageHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => MainPAge());
  static Handler _deadLineHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => DeadLine());
  
  static void setupRouter() {
    router.define(
      'home',
      handler: _homeHandler,
    );
    router.define(
      'mainPage',
      handler: _mainPageHandler,
    );
    router.define(
      'deadLine',
      handler: _deadLineHandler,
    );
  }
}