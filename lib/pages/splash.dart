import 'package:flutter/material.dart';
import 'package:payan/pages/main_page.dart';
import 'package:splashscreen/splashscreen.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}
Color c=Color(0XFF7ee669);
Color co=Color(0xFF5b6a03);
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: MainPAge(),
      title: new Text('جاودانه مرگ ارزانتر آسایش بیشتر',
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0
        ),
      ),
      image: new Image.asset('assets/splash.jpg'),
      gradientBackground: new LinearGradient(colors: [c,co ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 200.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red,
    );
  }
}
