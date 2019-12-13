import 'package:flutter/material.dart';
import 'package:payan/models/worker.dart';
import 'package:payan/resource/workerApiProvider.dart';
import 'package:payan/widgets/ProductSlider.dart';
import 'package:payan/widgets/image_slider.dart';

class Shop extends StatelessWidget {
  var id;
  Shop(this.id);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: WorkerApiProvider().getWorker(id[0]),
      builder: (context,AsyncSnapshot<Worker> snapshot)=>snapshot.hasData?Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              snapshot.data.photos.length>0?ImageSlider(16/9,snapshot.data.photos.map((f)=>f.url).toList()):ImageSlider(16/9,["https://via.placeholder.com/1600x900"]),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
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
                      'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.'
                    ),
                    SizedBox(
                      height: 170,
                      child:ProductSlider(snapshot.data.products),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ):Center(child: CircularProgressIndicator(),),
    );
  }
}
