import 'package:dio/dio.dart';
import 'package:payan/models/place.dart';

class PlaceApiProvider {
  static Dio _dio = Dio();

  Future<List<Place>> getplaces() async{
    List<Place> places = List<Place>();
    try{
      print('s');
      Response response = await _dio.get('https://javdane.liara.run/api/repo/places');
      for(var json in  response.data){
        print(json);
        if(json!=null){
          places.add(Place.fromJson(json));
        }
      }
    }
    catch(e,s){
      print(s);
      print(e);
    }
    return places;
  }
    Future<Place> getplace(id) async{
    try{
      print('s');
      Response response = await _dio.get('https://javdane.liara.run/api/repo/places/'+id.toString());
      return Place.fromJson(response.data);
    }
    catch(e,s){
      print(s);
      print(e);
    }
  }
  Future<List<Place>> getplacesbytype(type) async{
    List<Place> places = List<Place>();
    try{
      Response response = await _dio.get('https://javdane.liara.run/api/repo/places');
      for(var json in  response.data){
        if(json!=null){
          var p=Place.fromJson(json);
          if(p.type==type){
            places.add(Place.fromJson(json));
          }
        }
      }
    }
    catch(e,s){
      print(s);
      print(e);
    }
    return places;
  }
  
}