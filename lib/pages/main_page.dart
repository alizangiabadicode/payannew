import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payan/blocs/AppBloc.dart';
import 'package:provider/provider.dart';

class MainPAge extends StatelessWidget {
  const MainPAge({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var appBloc=Provider.of<AppBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('جاودانه'),
        centerTitle: true,
      ),
      body:appBloc.mainPageBody,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: appBloc.mainPageBodyIndex,
        items: [
          BottomNavigationBarItem(
            icon:Icon(FontAwesomeIcons.bookDead,),
            title: Text('خانه')
          ),
          BottomNavigationBarItem(
            icon:Icon(FontAwesomeIcons.circleNotch,),
            title: Text('رفتگان')
          ),
        ],
        onTap: appBloc.bottomNavigationOnTap,
      ),
    );
  }
}