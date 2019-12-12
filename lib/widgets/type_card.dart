import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TypeCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        child:SizedBox(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 1/1,
            child:Stack(    
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:1>0?Image.network('https://via.placeholder.com/900x900'):Center(child:Icon(FontAwesomeIcons.image,),),
                  ),
                ),
                Center(
                  child: Text(
                    'Title',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child:Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child:Text(
                      'merchant.address',
                      style: Theme.of(context).textTheme.caption.copyWith(color:Colors.white)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}