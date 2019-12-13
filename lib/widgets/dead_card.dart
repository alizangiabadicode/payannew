

import 'package:flutter/material.dart';

class DeadCard extends StatelessWidget {
  String name;
  DeadCard(this.name);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      leading: CircleAvatar(
        backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
      ) ,
    );
  }
}