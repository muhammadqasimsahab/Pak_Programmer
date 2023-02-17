import 'dart:convert';
/// IDEA : [{"id":1,"Idea_Description":"Idea is a main goal all the field","img":"","created_at":"2023-02-27T14:33:59.000000Z","updated_at":"2023-02-13T14:33:59.000000Z"},{"id":2,"Idea_Description":"Idea is a main goal all the field","img":"","created_at":"2023-02-20T14:34:49.000000Z","updated_at":"2023-02-27T14:34:49.000000Z"}]
/// SRS : [{"id":1,"Description":"srs is a field of IT","SRS_image":"","created_at":null,"updated_at":null},{"id":2,"Description":"uiux is a field of computer secince","SRS_image":"","created_at":null,"updated_at":null}]
/// UIUX : [{"id":1,"Description":"uiux is a field of computer secince","UIUX_image":"","created_at":null,"updated_at":null},{"id":2,"Description":"uiux is a field of computer secince","UIUX_image":"","created_at":null,"updated_at":null}]

FypModelClass fypModelClassFromJson(String str) => FypModelClass.fromJson(json.decode(str));
String fypModelClassToJson(FypModelClass data) => json.encode(data.toJson());
class FypModelClass {
  FypModelClass({
      this.idea, 
      this.srs, 
      this.uiux,});

  FypModelClass.fromJson(dynamic json) {
    if (json['IDEA'] != null) {
      idea = [];
      json['IDEA'].forEach((v) {
        idea?.add(Idea.fromJson(v));
      });
    }
    if (json['SRS'] != null) {
      srs = [];
      json['SRS'].forEach((v) {
        srs?.add(Srs.fromJson(v));
      });
    }
    if (json['UIUX'] != null) {
      uiux = [];
      json['UIUX'].forEach((v) {
        uiux?.add(Uiux.fromJson(v));
      });
    }
  }
  List<Idea>? idea;
  List<Srs>? srs;
  List<Uiux>? uiux;
FypModelClass copyWith({  List<Idea>? idea,
  List<Srs>? srs,
  List<Uiux>? uiux,
}) => FypModelClass(  idea: idea ?? this.idea,
  srs: srs ?? this.srs,
  uiux: uiux ?? this.uiux,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (idea != null) {
      map['IDEA'] = idea?.map((v) => v.toJson()).toList();
    }
    if (srs != null) {
      map['SRS'] = srs?.map((v) => v.toJson()).toList();
    }
    if (uiux != null) {
      map['UIUX'] = uiux?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// Description : "uiux is a field of computer secince"
/// UIUX_image : ""
/// created_at : null
/// updated_at : null

Uiux uiuxFromJson(String str) => Uiux.fromJson(json.decode(str));
String uiuxToJson(Uiux data) => json.encode(data.toJson());
class Uiux {
  Uiux({
      this.id, 
      this.description, 
      this.uIUXImage, 
      this.createdAt, 
      this.updatedAt,});

  Uiux.fromJson(dynamic json) {
    id = json['id'];
    description = json['Description'];
    uIUXImage = json['UIUX_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? description;
  String? uIUXImage;
  dynamic createdAt;
  dynamic updatedAt;
Uiux copyWith({  int? id,
  String? description,
  String? uIUXImage,
  dynamic createdAt,
  dynamic updatedAt,
}) => Uiux(  id: id ?? this.id,
  description: description ?? this.description,
  uIUXImage: uIUXImage ?? this.uIUXImage,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Description'] = description;
    map['UIUX_image'] = uIUXImage;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}

/// id : 1
/// Description : "srs is a field of IT"
/// SRS_image : ""
/// created_at : null
/// updated_at : null

Srs srsFromJson(String str) => Srs.fromJson(json.decode(str));
String srsToJson(Srs data) => json.encode(data.toJson());
class Srs {
  Srs({
      this.id, 
      this.description, 
      this.sRSImage, 
      this.createdAt, 
      this.updatedAt,});

  Srs.fromJson(dynamic json) {
    id = json['id'];
    description = json['Description'];
    sRSImage = json['SRS_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? description;
  String? sRSImage;
  dynamic createdAt;
  dynamic updatedAt;
Srs copyWith({  int? id,
  String? description,
  String? sRSImage,
  dynamic createdAt,
  dynamic updatedAt,
}) => Srs(  id: id ?? this.id,
  description: description ?? this.description,
  sRSImage: sRSImage ?? this.sRSImage,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Description'] = description;
    map['SRS_image'] = sRSImage;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}

/// id : 1
/// Idea_Description : "Idea is a main goal all the field"
/// img : ""
/// created_at : "2023-02-27T14:33:59.000000Z"
/// updated_at : "2023-02-13T14:33:59.000000Z"

Idea ideaFromJson(String str) => Idea.fromJson(json.decode(str));
String ideaToJson(Idea data) => json.encode(data.toJson());
class Idea {
  Idea({
      this.id, 
      this.ideaDescription, 
      this.img, 
      this.createdAt, 
      this.updatedAt,});

  Idea.fromJson(dynamic json) {
    id = json['id'];
    ideaDescription = json['Idea_Description'];
    img = json['img'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? ideaDescription;
  String? img;
  String? createdAt;
  String? updatedAt;
Idea copyWith({  int? id,
  String? ideaDescription,
  String? img,
  String? createdAt,
  String? updatedAt,
}) => Idea(  id: id ?? this.id,
  ideaDescription: ideaDescription ?? this.ideaDescription,
  img: img ?? this.img,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Idea_Description'] = ideaDescription;
    map['img'] = img;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}