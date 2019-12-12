

import 'package:flutter/material.dart';

import 'ClassCardWidget.dart';

class ClassSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 24),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Popular Fall 2019 Classes', style: Theme.of(context).textTheme.title.copyWith(fontSize: 16,color: Color(0xff444555))),
              FlatButton(
                child:Text('some text',
                  style: Theme.of(context).textTheme.button.copyWith(color: Theme.of(context).primaryColor),
                ),
                onPressed: (){
                  Navigator.of(context).pushNamed('seeAllGroups');
                },
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 14),
            separatorBuilder:(BuildContext context,int index){
              return SizedBox(width: 11,);
            },
            scrollDirection: Axis.horizontal,
            itemCount:5,
            itemBuilder: (context,index){
              return SizedBox(
                width: 150,
                child:Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child:ClassCardWidget()
                ),
              );
            },
          ),
        ),
        
      ],
    );
  }
}