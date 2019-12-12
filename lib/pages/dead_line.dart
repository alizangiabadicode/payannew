import 'package:flutter/material.dart';
import 'package:payan/widgets/dead_card.dart';
import 'package:sticky_headers/sticky_headers.dart';

class DeadLine extends StatelessWidget {
  const DeadLine({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemBuilder: (context, index) {
        return  StickyHeader(
          header:  Container(
            height: 50.0,
            color: Colors.blueGrey[700],
            padding: new EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: new Text('today ',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          content: Container(
            child: DeadCard()
          ),
        );
      },
      itemCount: 50,
    );
  }
}