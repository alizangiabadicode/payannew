import 'package:barcode_scan/barcode_scan.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payan/widgets/image_slider.dart';
import 'package:payan/widgets/type_card.dart';
import 'package:payan/widgets/type_slider.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SearchBar(),
        Divider(),
        AspectRatio(
          aspectRatio: 16/9,
          child: CarouselSlider(
            items:[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child:Image.asset('assets/banner.jpg')
              ),
            ]
          ),
        ),
        SizedBox(
          height: 200,
          child: TypeSlider(['talar','masjed','resturant']),
        ),
        SizedBox(
          height: 200,
          child: TypeSlider(['khadamat','ghasab','gerye_kon','chap','gol','akhoond','sang','zarf','kheyriye']),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, top: 19, right: 10, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon:Icon(FontAwesomeIcons.qrcode,size: 30,),
            onPressed:()async{
              var res=await scanBarcode();
              if(res!=null){
                const url = 'http://www.mmroshani.ir/s_bahonar/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              }
            },
          ),
          Container(
            height: 45,
            width: MediaQuery.of(context).size.width - 80,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: Theme.of(context).textTheme.subhead,
              decoration: InputDecoration(
                hintText: 'جستجو',
                hintStyle: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Color(0xffc0c0c3)),
              ),
              onSubmitted: (value) {

              },
            ),
          ),
        ],
      ),
    );
  }
}


Future scanBarcode() async {
  try {
    String barcode = await BarcodeScanner.scan();
    return barcode;
  } on PlatformException catch (e) {
    if (e.code == BarcodeScanner.CameraAccessDenied) {
      //permission not granted
      print('The user did not grant the camera permission!');
      return null;
    } else {
      print('Unknown error: $e');
      return null;
    }
  } on FormatException{
    //back button pressed in scan barcode screen
    print('null (User returned using the "back"-button before scanning anything. Result)');
  } catch (e) {
    print('Unknown error: $e');
    return null;
  }
}