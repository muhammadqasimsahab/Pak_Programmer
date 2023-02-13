// // To parse this JSON data, do
// //
// //     final fypModelClass = fypModelClassFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// List<FypModelClass> fypModelClassFromJson(String str) => List<FypModelClass>.from(json.decode(str).map((x) => FypModelClass.fromJson(x)));

// String fypModelClassToJson(List<FypModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class FypModelClass {
//     FypModelClass({
//         required this.idea,
//         required this.srs,
//         required this.uiux,
//         required this.wirefram,
//         required this.testing,
//         required this.code,
//         required this.delivery,
//     });

//     List<Idea> idea;
//     List<Sr> srs;
//     List<Sr> uiux;
//     List<dynamic> wirefram;
//     List<dynamic> testing;
//     List<dynamic> code;
//     List<dynamic> delivery;

//     factory FypModelClass.fromJson(Map<String, dynamic> json) => FypModelClass(
//         idea: List<Idea>.from(json["IDEA"].map((x) => Idea.fromJson(x))),
//         srs: List<Sr>.from(json["SRS"].map((x) => Sr.fromJson(x))),
//         uiux: List<Sr>.from(json["UIUX"].map((x) => Sr.fromJson(x))),
//         wirefram: List<dynamic>.from(json["Wirefram"].map((x) => x)),
//         testing: List<dynamic>.from(json["Testing"].map((x) => x)),
//         code: List<dynamic>.from(json["Code"].map((x) => x)),
//         delivery: List<dynamic>.from(json["Delivery"].map((x) => x)),
//     );

//     Map<String, dynamic> toJson() => {
//         "IDEA": List<dynamic>.from(idea.map((x) => x.toJson())),
//         "SRS": List<dynamic>.from(srs.map((x) => x.toJson())),
//         "UIUX": List<dynamic>.from(uiux.map((x) => x.toJson())),
//         "Wirefram": List<dynamic>.from(wirefram.map((x) => x)),
//         "Testing": List<dynamic>.from(testing.map((x) => x)),
//         "Code": List<dynamic>.from(code.map((x) => x)),
//         "Delivery": List<dynamic>.from(delivery.map((x) => x)),
//     };
// }

// class Idea {
//     Idea({
//         required this.id,
//         required this.ideaDescription,
//         required this.img,
//         required this.createdAt,
//         required this.updatedAt,
//     });

//     int id;
//     String ideaDescription;
//     String img;
//     dynamic createdAt;
//     dynamic updatedAt;

//     factory Idea.fromJson(Map<String, dynamic> json) => Idea(
//         id: json["id"],
//         ideaDescription: json["Idea_Description"],
//         img: json["img"],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "Idea_Description": ideaDescription,
//         "img": img,
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//     };
// }

// class Sr {
//     Sr({
//         required this.id,
//         required this.description,
//         required this.srsImage,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.uiuxImage,
//     });

//     int id;
//     String description;
//     String srsImage;
//     dynamic createdAt;
//     dynamic updatedAt;
//     String uiuxImage;

//     factory Sr.fromJson(Map<String, dynamic> json) => Sr(
//         id: json["id"],
//         description: json["Description"],
//         srsImage: json["SRS_image"],
//         createdAt: json["created_at"],
//         updatedAt: json["updated_at"],
//         uiuxImage: json["UIUX_image"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "Description": description,
//         "SRS_image": srsImage,
//         "created_at": createdAt,
//         "updated_at": updatedAt,
//         "UIUX_image": uiuxImage,
//     };
// }

// To parse this JSON data, do
//
//     final fypModelClass = fypModelClassFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<FypModelClass> fypModelClassFromJson(String str) => List<FypModelClass>.from(json.decode(str).map((x) => FypModelClass.fromJson(x)));

String fypModelClassToJson(List<FypModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FypModelClass {
    FypModelClass({
        required this.idea,
        required this.srs,
        required this.uiux,
    });

    List<Idea> idea;
    List<Sr> srs;
    List<Sr> uiux;

    factory FypModelClass.fromJson(Map<String, dynamic> json) => FypModelClass(
        idea: List<Idea>.from(json["IDEA"].map((x) => Idea.fromJson(x))),
        srs: List<Sr>.from(json["SRS"].map((x) => Sr.fromJson(x))),
        uiux: List<Sr>.from(json["UIUX"].map((x) => Sr.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "IDEA": List<dynamic>.from(idea.map((x) => x.toJson())),
        "SRS": List<dynamic>.from(srs.map((x) => x.toJson())),
        "UIUX": List<dynamic>.from(uiux.map((x) => x.toJson())),
    };
}

class Idea {
    Idea({
        required this.id,
        required this.ideaDescription,
        required this.img,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String ideaDescription;
    String img;
    dynamic createdAt;
    dynamic updatedAt;

    factory Idea.fromJson(Map<String, dynamic> json) => Idea(
        id: json["id"],
        ideaDescription: json["Idea_Description"],
        img: json["img"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Idea_Description": ideaDescription,
        "img": img,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}

class Sr {
    Sr({
        required this.id,
        required this.description,
        required this.srsImage,
        required this.createdAt,
        required this.updatedAt,
        required this.uiuxImage,
    });

    int id;
    String description;
    String srsImage;
    dynamic createdAt;
    dynamic updatedAt;
    String uiuxImage;

    factory Sr.fromJson(Map<String, dynamic> json) => Sr(
        id: json["id"],
        description: json["Description"],
        srsImage: json["SRS_image"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        uiuxImage: json["UIUX_image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Description": description,
        "SRS_image": srsImage,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "UIUX_image": uiuxImage,
    };
}
