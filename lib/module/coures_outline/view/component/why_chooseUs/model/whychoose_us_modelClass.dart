// To parse this JSON data, do
//
//     final whyChooseUsModelClass = whyChooseUsModelClassFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<WhyChooseUsModelClass> whyChooseUsModelClassFromJson(String str) => List<WhyChooseUsModelClass>.from(json.decode(str).map((x) => WhyChooseUsModelClass.fromJson(x)));

String whyChooseUsModelClassToJson(List<WhyChooseUsModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WhyChooseUsModelClass {
    WhyChooseUsModelClass({
        required this.id,
        required this.heading,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String heading;
    String description;
    dynamic createdAt;
    dynamic updatedAt;

    factory WhyChooseUsModelClass.fromJson(Map<String, dynamic> json) => WhyChooseUsModelClass(
        id: json["id"],
        heading: json["Heading"],
        description: json["Description"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Heading": heading,
        "Description": description,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
