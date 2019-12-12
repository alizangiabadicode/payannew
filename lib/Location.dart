import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  String title;
  String description;
  String address;
  String cat;
  String services;

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
                            "" + "مسجد علی اکبر",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                            textDirection: TextDirection.rtl,
                          ),
                          Text(
                            " دسته ی" + " مکان های مذهبی",
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          child: Center(
                              child: Text(
                            "مسیریابی ",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textDirection: TextDirection.rtl,
                          )),
                        ),
                        onPressed: () {
                          //TODO Find
                        },
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                        "توضیحات  " +
                            "\n" +
                            "مسجد نیایشگاه و محل گردهمایی مسلمانان است. کعبه طبق آیات قرآن اولین مسجد روی زمین است. مسجد النبی با ورود محمد، پیامبر اسلام به مدینه در عربستان سعودی پایه‌گذاری شد.",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl),
                  ),
                  Center(
                    child: Text(
                        "خدمات  " +
                            "\n" +
                            "مرکز ارشاد و تبلیغ اسلامی و کانون رعایت قواعد و قوانین خاص"
                            
                            "\n" +
                            "جمع‌آوری نذورات و کمک‌های خیرین پخش آن بین نیازمندان"+
                            "\n" +
                            "اعتقاد به عبادت نمازگزاران و نیایش به خدا از عوامل و انگیزه‌های بنیاد و ایجاد مساجد است"
                            "\n" +
                            "آموزش رشته‌های مختلف (قرآن، نهج البلاغه، آمادگی دفاعی و…)",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl),
                  ),
                  Center(
                      child: Text("آدرس  " + " کرمان خیابان سرباز کوچه 5",
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
