import 'package:flutter/material.dart';

class worker extends StatelessWidget {
  String title;
  String work_description;
  String address;
  String cat;
  
  // String title="" + "قصابی سهیل";
  // String cat=" دسته ی" + " ذبح و گوشت";
  // String work_description= "توضیحات  " +
  //                           "\n" +
  //                           "قصاب شخصی است که می تواند حیوانات را ذبح کند ، گوشت آنها را خرد کند ، گوشت خود را بفروشد یا در هر ترکیبی از این سه کار شرکت کند. آنها ممکن است برش های استاندارد گوشت و مرغ را برای فروش در مراکز خرده فروشی یا عمده فروشی تهیه کنند"
  //                       ;
  // String address="آدرس  " + " کرمان خیابان سرباز کوچه 5";
//List<Preoduct> products
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
                    children: <Widget>[  Row(
                      children: <Widget>[
                        Text(""+"4.5 ⭐️"+"",style: TextStyle(fontSize: 18,),)
                      ],
                    ),
                      Column(
                        children: <Widget>[
                          Text(
                            "" + "قصابی سهیل",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                            textDirection: TextDirection.rtl,
                          ),
                          Text(
                            " دسته ی" + " ذبح و گوشت",
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
                              borderRadius: BorderRadius.all(Radius.circular(18))),
                          child: Center(
                              child: Text(
                            "ارتباط",
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
                              borderRadius: BorderRadius.all(Radius.circular(18))),
                          child: Center(
                              child: Text(
                            "محصولات",
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
                            "قصاب شخصی است که می تواند حیوانات را ذبح کند ، گوشت آنها را خرد کند ، گوشت خود را بفروشد یا در هر ترکیبی از این سه کار شرکت کند. آنها ممکن است برش های استاندارد گوشت و مرغ را برای فروش در مراکز خرده فروشی یا عمده فروشی تهیه کنند",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl),
                  ),
                  Center(
                      child: Text("آدرس  " + " کرمان خیابان سرباز کوچه 5",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
