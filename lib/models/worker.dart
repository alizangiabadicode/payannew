class Worker {
  int id;
  String name;
  int contactInfoId;
  ContactInfo contactInfo;
  List<Products> products;
  List<Photos> photos;
  bool active;
  String type;

  Worker(
      {this.id,
      this.name,
      this.contactInfoId,
      this.contactInfo,
      this.products,
      this.photos,
      this.active,
      this.type});

  Worker.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    contactInfoId = json['contactInfoId'];
    contactInfo = json['contactInfo'] != null
        ? new ContactInfo.fromJson(json['contactInfo'])
        : null;
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
    if (json['photos'] != null) {
      photos = new List<Photos>();
      json['photos'].forEach((v) {
        photos.add(new Photos.fromJson(v));
      });
    }
    active = json['active'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['contactInfoId'] = this.contactInfoId;
    if (this.contactInfo != null) {
      data['contactInfo'] = this.contactInfo.toJson();
    }
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    if (this.photos != null) {
      data['photos'] = this.photos.map((v) => v.toJson()).toList();
    }
    data['active'] = this.active;
    data['type'] = this.type;
    return data;
  }
}

class ContactInfo {
  int id;
  String name;
  String value;

  ContactInfo({this.id, this.name, this.value});

  ContactInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['value'] = this.value;
    return data;
  }
}

class Products {
  int id;
  String pname;
  String description;
  double cost;
  double offCost;
  List<Photos> photos;
  int workerId;

  Products(
      {this.id,
      this.pname,
      this.description,
      this.cost,
      this.offCost,
      this.photos,
      this.workerId});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pname = json['pname'];
    description = json['description'];
    cost = json['cost'];
    offCost = json['offCost'];
    if (json['photos'] != null) {
      photos = new List<Photos>();
      json['photos'].forEach((v) {
        photos.add(new Photos.fromJson(v));
      });
    }
    workerId = json['workerId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pname'] = this.pname;
    data['description'] = this.description;
    data['cost'] = this.cost;
    data['offCost'] = this.offCost;
    if (this.photos != null) {
      data['photos'] = this.photos.map((v) => v.toJson()).toList();
    }
    data['workerId'] = this.workerId;
    return data;
  }
}

class Photos {
  int id;
  String url;

  Photos({this.id, this.url});

  Photos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    return data;
  }
}