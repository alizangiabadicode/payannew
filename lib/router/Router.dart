import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:payan/pages/home_page.dart';
import 'package:payan/pages/main_pages.dart';


class FluroRouter{
  static Router router = Router();
  static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => HomePage());
  static Handler _mainPageHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => MainPAge());
  
  static void setupRouter() {
    router.define(
      'home',
      handler: _homeHandler,
    );
    router.define(
      'mainPage',
      handler: _mainPageHandler,
    );
  }
}