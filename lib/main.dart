import 'package:flutter/material.dart';
import 'package:payan/Location.dart';
import 'package:payan/worker.dart';

void main() => runApp(MaterialApp(
 // home: Location(addrees: "بهمنیار 22  ",description: " مسجد و مهدیه برای مراسمات", rating:5 ,title: "مسجد علی اکبر",),
  title: "محل",
  home: worker(),

));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
