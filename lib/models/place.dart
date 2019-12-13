import 'package:payan/models/worker.dart';

class Place {
  int id;
  String title;
  //int locationId;
  //Null location;
  int capacity;
  bool active;
  List<Photos> photos;
  String type;

  Place(
      {this.id,
      this.title,
      //this.locationId,
      //this.location,
      this.capacity,
      this.active,
      this.photos,
      this.type});

  Place.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];    //locationId = json['locationId'];
    //location = json['location'];
    capacity = json['capacity'];
    active = json['active'];
    if(photos!=null){
      photos = json['photos'].cast<String>();
    }
    type = json['type'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    //data['locationId'] = this.locationId;
   // data['location'] = this.location;
    data['capacity'] = this.capacity;
    data['active'] = this.active;
    data['photos'] = this.photos;
    data['type'] = this.type;
    return data;
  }
}