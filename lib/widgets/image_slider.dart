import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ImageSlider extends StatelessWidget {
  double aspect;
  List<String> imgs;
  ImageSlider(this.aspect,this.imgs);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspect,
      child: CarouselSlider(
        items: imgs.map((i) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child:Image.network(i)
          );
        }).toList(),
      ),
    );
  }
}