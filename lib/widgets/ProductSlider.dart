import 'package:flutter/material.dart';
import 'package:payan/models/worker.dart';
import 'package:payan/widgets/type_card.dart';

import 'ProductCard.dart';

class ProductSlider extends StatelessWidget {
  List<Products> products;
  ProductSlider(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context,index){
            return Container(
              width: 170,
              child:Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: ProductCard(products[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}