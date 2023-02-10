// To parse this JSON data, do
//
//     final homeModelClass = homeModelClassFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<HomeModelClass> homeModelClassFromJson(String str) => List<HomeModelClass>.from(json.decode(str).map((x) => HomeModelClass.fromJson(x)));

String homeModelClassToJson(List<HomeModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeModelClass {
    HomeModelClass({
        required this.id,
        required this.courseTitle,
        required this.courseSubtitle,
        required this.courseDiscription,
        required this.courseImage,
        required this.courseDuration,
        required this.courseFees,
        required this.courseDiscount,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String courseTitle;
    String courseSubtitle;
    String courseDiscription;
    String courseImage;
    String courseDuration;
    String courseFees;
    String courseDiscount;
    dynamic createdAt;
    dynamic updatedAt;

    factory HomeModelClass.fromJson(Map<String, dynamic> json) => HomeModelClass(
        id: json["id"],
        courseTitle: json["course_title"],
        courseSubtitle: json["course_subtitle"],
        courseDiscription: json["course_discription"],
        courseImage: json["course_image"],
        courseDuration: json["course_duration"],
        courseFees: json["course_fees"],
        courseDiscount: json["course_discount"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "course_title": courseTitle,
        "course_subtitle": courseSubtitle,
        "course_discription": courseDiscription,
        "course_image": courseImage,
        "course_duration": courseDuration,
        "course_fees": courseFees,
        "course_discount": courseDiscount,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
