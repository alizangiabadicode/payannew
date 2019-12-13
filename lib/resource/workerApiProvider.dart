import 'package:dio/dio.dart';
import 'package:payan/models/worker.dart';

class WorkerApiProvider {
  static Dio _dio = Dio();

  Future<List<Worker>> getWorkers() async{
    List<Worker> Workers = List<Worker>();
    try{
      print('s');
      Response response = await _dio.get('https://javdane.liara.run/api/repo/Workers');
      for(var json in  response.data){
        print(json);
        if(json!=null){
          Workers.add(Worker.fromJson(json));
        }
      }
    }
    catch(e,s){
      print(s);
      print(e);
    }
    return Workers;
  }

  Future<Worker> getWorker(id) async{
    try{
      Response response = await _dio.get('https://javdane.liara.run/api/repo/Workers/'+id.toString());
      return Worker.fromJson(response.data);
    }
    catch(e,s){
      print(s);
      print(e);
    }
  }

  Future<List<Worker>> getWorkersbytype(type) async{
    List<Worker> Workers = List<Worker>();
    try{
      Response response = await _dio.get('https://javdane.liara.run/api/repo/Workers');
      for(var json in  response.data){
        if(json!=null){
          var p=Worker.fromJson(json);
          if(p.type==type){
            Workers.add(Worker.fromJson(json));
          }
        }
      }
    }
    catch(e,s){
      print(s);
      print(e);
    }
    return Workers;
  }
  
}