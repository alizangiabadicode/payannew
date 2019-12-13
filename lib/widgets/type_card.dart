import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TypeCard extends StatelessWidget {
  String name;
  TypeCard(this.name);

  var workers=['khadamat','ghasab','gerye_kon','chap','gol','akhoond','sang','zarf','kheyriye'];
  var places=['talar','masjed','resturant'];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: (){
          if(places.contains(name)){
            Navigator.of(context).pushNamed('type_list/$name/1');
          }else{
            Navigator.of(context).pushNamed('type_list/$name/0');
          }
        },
        child:SizedBox(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 1/1,
            child:Stack(    
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:Image.asset('assets/$name.jpg'),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffa1a1a1),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight:  Radius.circular(10))
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    translate(name),
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static String translate(name){
    ['khadamat','ghasab','gerye_kon','chap','gol','akhoond','sang','zarf','kheyriye'];
    switch (name) {
      case 'kheyriye':
        return 'خیریه ها';
        break;
      case 'ghasab':
        return 'قصاب';
        break;
      case 'gerye_kon':
        return 'گریه کن';
        break;
      case 'chap':
        return 'چاپ کارت';
        break;
      case 'gol':
        return 'گلفروشی';
        break;
      case 'akhoond':
        return 'روحانی';
        break;
      case 'sang':
        return 'سنگ قبر';
        break;
      case 'zarf':
        return 'ظروف یکبار مصرف';
        break;
      case 'khadamat':
        return 'نیروی خدماتی';
        break;
      case 'resturant':
        return 'رستوران';
        break;
      case 'talar':
        return 'تالار';
        break;
      case 'masjed':
        return 'مسجد';
        break;
    }
  }
}