import 'package:flutter/material.dart';
import 'package:payan/widgets/type_card.dart';

class TypeSlider extends StatelessWidget {
  const TypeSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index){
            return Container(
              width: 170,
              child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: TypeCard(),
              ),
            );
          },
        ),
      ),
    );
  }
}