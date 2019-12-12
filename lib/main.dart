import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:payan/router/Router.dart';
import 'package:provider/provider.dart';

import 'blocs/AppBloc.dart';

void main(){
  FluroRouter.setupRouter();
  runApp(App());
}
final GlobalKey<NavigatorState> mainNavigationKey = GlobalKey();
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MultiProvider(
      providers:[
        ChangeNotifierProvider<AppBloc>.value(
          value: AppBloc(),
        ),
          
      ] ,
      child: MaterialApp(
        navigatorKey: mainNavigationKey,
        title: 'جاودانه',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: Locale("fa", "IR"),
        theme:ThemeData(
          primaryColor: Colors.indigo
        ),
        initialRoute: 'mainPage',
        onGenerateRoute: FluroRouter.router.generator
      ),
    );
  }
}