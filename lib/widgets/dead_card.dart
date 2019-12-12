

import 'package:flutter/material.dart';

class DeadCard extends StatelessWidget {
  const DeadCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('امیرحسن امیرماهانی'),
      leading: CircleAvatar(
        backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
      ) ,
    );
  }
}