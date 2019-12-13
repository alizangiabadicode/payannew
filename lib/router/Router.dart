import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:payan/pages/dead_line.dart';
import 'package:payan/pages/home_page.dart';
import 'package:payan/pages/main_page.dart';
import 'package:payan/pages/place.dart';
import 'package:payan/pages/shop.dart';
import 'package:payan/pages/type_list.dart';
import 'package:splashscreen/splashscreen.dart';


class FluroRouter{
  static Router router = Router();
  static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => HomePage());
  static Handler _mainPageHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => MainPAge());
  static Handler _deadLineHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => DeadLine());
  static Handler _placePageHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => Place(params['id']));
  static Handler _shopHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => Shop(params['id']));
  static Handler _typeListHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => TypeList(params['name'],params['is_place']));
  static Handler _splashHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SplashScreen());
  static void setupRouter() {
    router.define(
      'shop/:id',
      handler: _shopHandler,
    );
    router.define(
      'splash',
      handler: _splashHandler,
    );
    router.define(
      'type_list/:name/:is_place',
      handler: _typeListHandler,
    );
    router.define(
      'place/:id',
      handler: _placePageHandler,
    );
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