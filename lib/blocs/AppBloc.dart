import 'package:flutter/material.dart';
import 'package:payan/router/Router.dart';

final GlobalKey<NavigatorState> homeNavigationKey =GlobalKey();

class AppBloc extends ChangeNotifier{
  int _mainPageBodyIndex = 1;
  
  List<Widget> _mainPages=[
    Navigator(
      key: homeNavigationKey,
      initialRoute: 'home',
      onGenerateRoute: FluroRouter.router.generator,
    ),
    Container(color: Colors.red,)    
  ];

  Widget get mainPageBody=>IndexedStack(children:_mainPages,index: mainPageBodyIndex);
  int get mainPageBodyIndex=>_mainPageBodyIndex;

  GlobalKey<NavigatorState> currentNavigatorKey() {
    switch (_mainPageBodyIndex) {
      case 0:
        return homeNavigationKey;
        break;
    }
    return null;
  } 
  void bottomNavigationOnTap(BuildContext context,int index){
    _mainPageBodyIndex=index;
    notifyListeners();
  }
}
