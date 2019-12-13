import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payan/models/place.dart';
import 'package:payan/widgets/image_slider.dart';



class PlaceCard extends StatelessWidget {  
  Place place;
  PlaceCard(this.place);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed('place/'+place.id.toString());
        },
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color:Color(0x1a000000),
                  offset: Offset(0,30),
                  blurRadius: 32,
                  spreadRadius: 0
                ) ],
              ),
              child:SizedBox(
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 16/9,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          child:Image.network("https://via.placeholder.com/1600x900"),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child:Container(
                          width: 50,
                          height: 28,
                          child:ClipRect(
                            child: Container(
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child:Center(
                                child:Text(
                                  "5 ⭐️",
                                  style: Theme.of(context).textTheme.caption.copyWith(fontWeight: FontWeight.w700,color: Colors.black),
                                ),
                              ),
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Color(0x1a000000),
                  offset: Offset(0,1),
                  blurRadius: 32,
                  spreadRadius: 0
                ) ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only( right: 12,top: 12 ,bottom: 4),
                    child: Text(
                      place.title,
                      style: Theme.of(context).textTheme.subhead.copyWith(fontWeight: FontWeight.w700,color: Color(0xff565656)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:12,vertical:5),
                    child: Row(children: <Widget>[
                      Padding(child:Icon(FontAwesomeIcons.users,size: 17,),padding: EdgeInsets.only(left: 10),),
                      Text(place.capacity.toString())
                    ],),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}