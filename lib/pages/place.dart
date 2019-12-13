import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payan/resource/placesApiProvider.dart';
import 'package:payan/widgets/image_slider.dart';
import 'package:payan/models/place.dart' as m;

class Place extends StatelessWidget {
  var id;
  Place(this.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: PlaceApiProvider().getplace(id[0]),
        builder: (context,AsyncSnapshot<m.Place> snapshot){
          if(snapshot.hasData){
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ImageSlider(16/9,["https://via.placeholder.com/1600x900"]),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton(
                            onPressed: (){},
                            child: Container(
                              //margin: EdgeInsets.all(10),
                              width: 150,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius:BorderRadius.all(Radius.circular(18))),
                              child: Center(
                                child: Text(
                                  "تماس",
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "4.5 ⭐️",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "توضیحات",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "مسجد نیایشگاه و محل گردهمایی مسلمانان است. کعبه طبق آیات قرآن اولین مسجد روی زمین است. مسجد النبی با ورود محمد، پیامبر اسلام به مدینه در عربستان سعودی پایه‌گذاری شد.",
                      ),
                      Divider(),
                      Text(
                        "خدمات",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "مرکز ارشاد و تبلیغ اسلامی و کانون رعایت قواعد و قوانین خاص"
                        "\n" +
                        "جمع‌آوری نذورات و کمک‌های خیرین پخش آن بین نیازمندان"+
                        "\n" +
                        "اعتقاد به عبادت نمازگزاران و نیایش به خدا از عوامل و انگیزه‌های بنیاد و ایجاد مساجد است"
                        "\n" +
                        "آموزش رشته‌های مختلف (قرآن، نهج البلاغه، آمادگی دفاعی و…)",
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.mapMarked),
                          SizedBox(width: 10,),
                          Text(
                            " کرمان خیابان سرباز کوچه 5",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
          }
          else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      )
    );
  }
}
