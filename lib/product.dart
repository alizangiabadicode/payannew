import 'package:flutter/material.dart';

class product extends StatelessWidget {
  String title;
  String workerName;
  String cost;
  String cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset("assets/helper.png"),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "" + "4.5 ⭐️" + "",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                              " گریه و ناله",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                            textDirection: TextDirection.rtl,
                          ),
                          Text(
                            " دسته ی" + " گریه ",
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        child: Container(
                          //margin: EdgeInsets.all(10),
                          width: 150,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          child: Center(
                              child: Text(
                            "رزرو",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textDirection: TextDirection.rtl,
                          )),
                        ),
                        onPressed: () {
                          //TODO contact
                        },
                      ),
                      FlatButton(
                        child: Container(
                          // margin: EdgeInsets.all(10),
                          width: 150,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          child: Center(
                              child: Text(
                            "سفارش محصول",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textDirection: TextDirection.rtl,
                          )),
                        ),
                        onPressed: () {
                          //TODO Products
                        },
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                        "توضیحات  " +
                            "\n" +
                            "گریه با جاری شدن اشک از چشمان و در بسیاری موارد با ناله و تغییر حالت دهان همراه است. گریه واکنش و نمود ایجاد وضعیتی احساسی است. اغلب گریه در مواقعی که فرد غمگین است صورت می‌گیرد",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl),
                  ),
                  Center(
                      child: Text("قیمت  " + " 2500000",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
