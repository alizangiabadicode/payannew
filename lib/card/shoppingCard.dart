import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        children: <Widget>[
          ProductRow(),
          ProductRow(),
          ProductRow(),
          ProductRow(),
          ProductRow(),
            ButtonRow()

        ],
      ),
    );
  }
}

class ProductRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
              color: Colors.white,

          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Text('price'),
            ),
            Container(
              child: Text('name'),
            ),
          ],
        ));
  }
}


class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          color: Colors.blue,
          child: Text(
            'پرداخت',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          onPressed: () {
            print('pressed');
          },
        )
      ],
    );
  }
}