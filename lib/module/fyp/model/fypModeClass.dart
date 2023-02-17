// To parse this JSON data, do
//
//     final fypModelClass = fypModelClassFromJson(jsonString);

import 'dart:convert';

List<FypModelClass> fypModelClassFromJson(String str) => List<FypModelClass>.from(json.decode(str).map((x) => FypModelClass.fromJson(x)));

String fypModelClassToJson(List<FypModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FypModelClass {
    FypModelClass({
        required this.id,
        required this.fpyHeading,
        this.createdAt,
        this.updatedAt,
        required this.description,
    });

    int id;
    String fpyHeading;
    dynamic createdAt;
    dynamic updatedAt;
    List<Description> description;

    factory FypModelClass.fromJson(Map<String, dynamic> json) => FypModelClass(
        id: json["id"],
        fpyHeading: json["Fpy_Heading"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        description: List<Description>.from(json["Description"].map((x) => Description.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Fpy_Heading": fpyHeading,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "Description": List<dynamic>.from(description.map((x) => x.toJson())),
    };
}

class Description {
    Description({
        required this.id,
        required this.fypId,
        required this.description,
         this.img,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    int fypId;
    String description;
    String? img;
    dynamic createdAt;
    dynamic updatedAt;

    factory Description.fromJson(Map<String, dynamic> json) => Description(
        id: json["id"],
        fypId: json["fyp_id"],
        description: json["Description"],
        img: json["img"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fyp_id": fypId,
        "Description": description,
        "img": img,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
