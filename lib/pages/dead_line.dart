import 'package:flutter/material.dart';
import 'package:payan/widgets/dead_card.dart';
import 'package:sticky_headers/sticky_headers.dart';

class DeadLine extends StatelessWidget {
  const DeadLine({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: <Widget>[
        StickyHeader(
          header:  Container(
            height: 50.0,
            color: Colors.blueGrey[700],
            padding: new EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: new Text('امروز ',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          content:Column(
            children: <Widget>[
              DeadCard('امیرحسن امیرماهانی'),
              DeadCard('علی زنگی ابادی'),
              DeadCard('نادر ریشی'),
              DeadCard('دوست نادر ریشی'),
              DeadCard('امید داور'),
              DeadCard('کسری رحمتیان'),
              DeadCard('حمیدرضا رادفر'),
            ],
          ),
        ),
        StickyHeader(
          header:  Container(
            height: 50.0,
            color: Colors.blueGrey[700],
            padding: new EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: new Text('دیروز ',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          content:Column(
            children: <Widget>[
              DeadCard('حمید یزدانپناه'),
              DeadCard('رضا محسنی'),
              DeadCard('مجتبی'),
              DeadCard('محسن شعاعیفر'),
            ],
          ),
        ),
      ],
    );
  }
}