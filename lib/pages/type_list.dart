import 'package:flutter/material.dart';
class TypeList extends StatelessWidget{
  String type_name='رستوران';
  int index=1;
  var types=['',''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text(''),
      ),
      body:DefaultTabController(
        initialIndex:index,
        length: 3,//types len
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: TabBar(
            isScrollable: true,merchant.menus
            indicatorColor: Colors.transparent,
            tabs:types.map((type)=>Container(
              child:Tab(text:type),
            )).toList(),
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 20,),
            child: TabBarView(
              children:merchant.menus.map((menu)=>TypeTab(menu)).toList()
            ),
          ),
        ),
      ),
    );
  }
}

class TypeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder:(BuildContext context,int index){
        return SizedBox(height: 12,);
      },
      itemBuilder: (context,index){
        return SizedBox(
          child:Padding(
            padding: EdgeInsets.only(left: 24,right: 24),
            child: ItemCard(
              item: menu.items[index],
              prefixHeroTag: menu.name,
            ),
          ),
        );
      },
      itemCount: menu.items.length,
    );
  }
}