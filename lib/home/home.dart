import 'package:flutter/material.dart';
import 'package:payan/home/slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        SearchBar(),
        SizedBox(
          height: 260,
          child: Products(),
        ),
        SizedBox(
          height: 260,
          child: Products(),
        ),
        SizedBox(
          height: 260,
          child: Products(),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, top: 19, right: 24, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            child: Image.asset(
              'assets/barcode.png',
              height: 24,
            ),
            // onTap: ()async{
            //   var res=await scanBarcode();
            //   if(res!=null){
            //     print(res);
            //     // Navigator.of(context).push(
            //     //   MaterialPageRoute(
            //     //     builder: (context){
            //     //       return ScanQrResult(res);
            //     //     }
            //     //   )
            //     // );
            //   }
            // },
          ),
          Container(
            height: 44,
            width: MediaQuery.of(context).size.width - 85,
            decoration: new BoxDecoration(
                color: Color(0xfff3f3f3),
                borderRadius: BorderRadius.circular(8)),
            child: TextField(
              textAlign: TextAlign.end,
              textAlignVertical: TextAlignVertical.center,
              style: Theme.of(context).textTheme.subhead,
              decoration: InputDecoration(
                // prefix: Container(
                //   width: 22,
                //   alignment: Alignment.centerRight,
                //   // padding: EdgeInsets.only(top: 2),
                //   child: Image.asset(
                //     'assets/barcode.png',
                //     height: 20,
                //     width: 20,
                //   ),
                // ),
                hintText: 'جستجو',
                hintStyle: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Color(0xffc0c0c3)),
              ),
              onSubmitted: (value) {
                // SearchBloc.filter.keyWord=value;
                // Navigator.of(context).pushNamed('/search_result');
              },
            ),
          ),
        ],
      ),
    );

    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: <Widget>[
    //     Image.asset('assets/barcode.png',
    //     height: 50,
    //     width: 50,),
    //     SearchInput(),
    //   ],
    // );
  }
}

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      child: TextField(
        textAlign: TextAlign.end,
        textAlignVertical: TextAlignVertical.center,
        style: Theme.of(context).textTheme.subhead,
        decoration: InputDecoration(

            // prefix:Container(width: 22,alignment: Alignment.centerRight ,padding:EdgeInsets.only(top: 22) ,
            //  child: Image.asset('assets/images/search.png',height: 20,width: 20,),
            //  ),
            hintText: 'جستجو'
            // hintStyle: Theme.of(context).textTheme.subhead.copyWith(color: Color(0xffc0c0c3)),
            ),
        onSubmitted: (value) {},
      ),
    );
  }
}

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ClassSlider(),
    );
  }
}
