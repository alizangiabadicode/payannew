// user defined function
import 'package:flutter/material.dart';

class res extends StatefulWidget {
  res({Key key}) : super(key: key);

  @override
  _resState createState() => _resState();
}

class _resState extends State<res> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            AlertDialog(
              title: new Text("اطلاعات رزرو "),
              content: Column(
                children: <Widget>[
                  Text(
                    "نام مکان" + "",
                  ),
                  Text("هزینه رزرو " + ""),
                ],
              ),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                RaisedButton(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Text("تایید"),
                  ),
                )
              ],
            );
          },
          child: Icon(Icons.info_outline)),
    );
  }

// user defined function
  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("اطلاعات رزرو "),
          content: Column(
            children: <Widget>[
              Text(
                "نام مکان" + "",
              ),
              Row(
                children: <Widget>[
                  Text("هزینه رزرو " + ""),
                  RaisedButton(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Text("تایید"),
                    ),
                  )
                ],
              )
            ],
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
