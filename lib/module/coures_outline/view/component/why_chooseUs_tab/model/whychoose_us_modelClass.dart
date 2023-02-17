// To parse this JSON data, do
//
//     final whyChooseUsModelClass = whyChooseUsModelClassFromJson(jsonString);

import 'dart:convert';

List<WhyChooseUsModelClass> whyChooseUsModelClassFromJson(String str) => List<WhyChooseUsModelClass>.from(json.decode(str).map((x) => WhyChooseUsModelClass.fromJson(x)));

String whyChooseUsModelClassToJson(List<WhyChooseUsModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WhyChooseUsModelClass {
    WhyChooseUsModelClass({
        required this.id,
        required this.heading,
        this.createdAt,
        this.updatedAt,
        required this.description,
    });

    int id;
    String heading;
    dynamic createdAt;
    dynamic updatedAt;
    List<Description> description;

    factory WhyChooseUsModelClass.fromJson(Map<String, dynamic> json) => WhyChooseUsModelClass(
        id: json["id"],
        heading: json["Heading"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        description: List<Description>.from(json["Description"].map((x) => Description.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Heading": heading,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "Description": List<dynamic>.from(description.map((x) => x.toJson())),
    };
}

class Description {
    Description({
        required this.id,
        required this.headingId,
        required this.description,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    int headingId;
    String description;
    dynamic createdAt;
    dynamic updatedAt;

    factory Description.fromJson(Map<String, dynamic> json) => Description(
        id: json["id"],
        headingId: json["heading_id"],
        description: json["Description"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "heading_id": headingId,
        "Description": description,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
