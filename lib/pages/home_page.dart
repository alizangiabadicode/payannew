import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payan/widgets/image_slider.dart';
import 'package:payan/widgets/type_card.dart';
import 'package:payan/widgets/type_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SearchBar(),
        Divider(),
        
        ImageSlider(16/9,['https://via.placeholder.com/1600x900']),
        SizedBox(
          height: 200,
          child: TypeSlider(),
        ),
        SizedBox(
          height: 200,
          child: TypeSlider(),
        ),
        SizedBox(
          height: 200,
          child: TypeSlider(),
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
          IconButton(icon:Icon(FontAwesomeIcons.qrcode,size: 30,),),
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
