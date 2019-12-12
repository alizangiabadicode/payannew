import 'package:flutter/material.dart';
import 'package:flutter_images_slider/flutter_images_slider.dart';

class Location extends StatelessWidget {
  // List<serviceCard> servs;
  String title;
  String description;
  String addrees;
  int rating;
  Location({this.addrees, this.description, this.rating, this.title});
   Widget top = Stack(
    children: <Widget>[
      ImagesSlider(
          items: map<Widget>(imgs, (index, i) {
        return Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(i), fit: BoxFit.cover)),
        );
      })),
      Positioned(left: 5,top: 5,
      child: Container(
        width: 30,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.black.withOpacity(.5)
        ),
       // child: Text(rating.toString()),//TODO rating
      ),)
    ],
  );

  static List<String> imgs = [
    "https://via.placeholder.com/1600x900",
    "https://via.placeholder.com/1600x900"
  ];

  static List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget services = SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        serviceCard(
          cost: 1500,
          name: "تست",
          describe: "جهت تست",
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("محل",textDirection: TextDirection.rtl,),
      //centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          top,
          //services,
          //TODO Background
          Text(
            "عنوان : " + title,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Text("توضیحات : " + description,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
          Text("آدرس : " + addrees,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
          FlatButton(
            child: Container(
              width: 150,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Center(
                  child: Text(
                "رزرو",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
            ),
            onPressed: () {
              //TODO reserve
            },
          )
        ],
      ),
    );
  }
}

class serviceCard extends StatelessWidget {
  String name;
  String describe;
  int cost;
  serviceCard({this.name, this.describe, this.cost});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.black38),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            "نام خدمت  " + name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textDirection: TextDirection.rtl,
          ),
          Text("شرح خدمت " + describe,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              textDirection: TextDirection.rtl),
          Text(
            "هزینه " + cost.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
