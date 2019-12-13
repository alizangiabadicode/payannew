import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payan/models/worker.dart';
import 'package:payan/pages/product.dart';

class ProductCard extends StatelessWidget {
  Products p;
  ProductCard(this.p);

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

                Align(
                  alignment: Alignment.bottomCenter,
                  child:Container(
                    width: 170,
                    height:50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:  Radius.circular(10),),
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child:Padding(
                    padding: EdgeInsets.only(bottom: 10,right: 10),
                    child:Text(
                      p.pname,
                      style: Theme.of(context).textTheme.title.copyWith(color: Colors.white)
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child:Padding(
                    padding: EdgeInsets.only(bottom: 10,left: 10),
                    child:Text(
                      p.cost.toString(),
                      style: Theme.of(context).textTheme.body1.copyWith(color: Colors.white)
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