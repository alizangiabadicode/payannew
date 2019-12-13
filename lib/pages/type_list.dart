import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payan/models/place.dart';
import 'package:payan/models/worker.dart';
import 'package:payan/resource/placesApiProvider.dart';
import 'package:payan/resource/workerApiProvider.dart';
import 'package:payan/widgets/place_card.dart';
import 'package:payan/widgets/type_card.dart';
class TypeList extends StatelessWidget{
  var type_name;
  var place;
  TypeList(this.type_name,this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text(TypeCard.translate(type_name[0])),
      ),
      body:place[0]=='1'?FutureBuilder(
        future:PlaceApiProvider().getplacesbytype(type_name[0]),
        builder: (context,AsyncSnapshot<List<Place>> snapshot){
          if(snapshot.hasData){
            return  ListView.separated(
            separatorBuilder:(BuildContext context,int index){
              return SizedBox(height: 12,);
            },
            itemBuilder: (context,index){
              return SizedBox(
                child:Padding(
                  padding: EdgeInsets.only(left: 24,right: 24),
                  child: PlaceCard(
                    snapshot.data[index]
                  ),
                ),
              );
            },
            itemCount: snapshot.data.length,
          );
        }
        else{
           return Center(child: CircularProgressIndicator(),);
        }
        },
      ):FutureBuilder(
        future:WorkerApiProvider().getWorkersbytype(type_name[0]),
        builder: (context,AsyncSnapshot<List<Worker>> snapshot){
          if(snapshot.hasData){
            return  ListView.separated(
            separatorBuilder:(BuildContext context,int index){
              return SizedBox(height: 12,);
            },
            itemBuilder: (context,index){
              return SizedBox(
                child:Padding(
                  padding: EdgeInsets.only(left: 24,right: 24),
                  child: WorkerCard(
                    snapshot.data[index]
                  ),
                ),
              );
            },
            itemCount: snapshot.data.length,
          );
        }
        else{
           return Center(child: CircularProgressIndicator(),);
        }
        },
      ),
    );
  }
}




class WorkerCard extends StatelessWidget {  
  Worker worker;
  WorkerCard(this.worker);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed('shop/'+worker.id.toString());
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
                          child:worker.photos.length>0?worker.photos.length>0?Image.network(worker.photos[0].url,fit: BoxFit.fill,):Center(child:Icon(FontAwesomeIcons.playCircle,),):Container(),
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
                      worker.name,
                      style: Theme.of(context).textTheme.subhead.copyWith(fontWeight: FontWeight.w700,color: Color(0xff565656)),
                      textAlign: TextAlign.left,
                    ),
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