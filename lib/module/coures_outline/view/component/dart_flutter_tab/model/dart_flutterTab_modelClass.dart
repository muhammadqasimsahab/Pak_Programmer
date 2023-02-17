// To parse this JSON data, do
//
//     final getCourseOutlineModelClass = getCourseOutlineModelClassFromJson(jsonString);

import 'dart:convert';

List<GetCourseOutlineModelClass> getCourseOutlineModelClassFromJson(String str) => List<GetCourseOutlineModelClass>.from(json.decode(str).map((x) => GetCourseOutlineModelClass.fromJson(x)));

String getCourseOutlineModelClassToJson(List<GetCourseOutlineModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetCourseOutlineModelClass {
    GetCourseOutlineModelClass({
        required this.id,
        required this.courseId,
        required this.title,
        this.createdAt,
        this.updatedAt,
        required this.outline,
    });

    int id;
    String courseId;
    String title;
    dynamic createdAt;
    dynamic updatedAt;
    List<Outline> outline;

    factory GetCourseOutlineModelClass.fromJson(Map<String, dynamic> json) => GetCourseOutlineModelClass(
        id: json["id"],
        courseId: json["course_id"],
        title: json["title"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        outline: List<Outline>.from(json["outline"].map((x) => Outline.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "course_id": courseId,
        "title": title,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "outline": List<dynamic>.from(outline.map((x) => x.toJson())),
    };
}

class Outline {
    Outline({
        required this.id,
        required this.courseId,
        required this.courseTitleId,
        required this.outlineTitle,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    int courseId;
    int courseTitleId;
    String outlineTitle;
    String? createdAt;
    String? updatedAt;

    factory Outline.fromJson(Map<String, dynamic> json) => Outline(
        id: json["id"],
        courseId: json["course_id"],
        courseTitleId: json["course_title_id"],
        outlineTitle: json["outline_title"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "course_id": courseId,
        "course_title_id": courseTitleId,
        "outline_title": outlineTitle,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
