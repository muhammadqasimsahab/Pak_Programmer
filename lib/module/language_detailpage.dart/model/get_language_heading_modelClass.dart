// To parse this JSON data, do
//
//     final getLanguageHeadingModelClass = getLanguageHeadingModelClassFromJson(jsonString);

import 'dart:convert';

List<GetLanguageHeadingModelClass> getLanguageHeadingModelClassFromJson(String str) => List<GetLanguageHeadingModelClass>.from(json.decode(str).map((x) => GetLanguageHeadingModelClass.fromJson(x)));

String getLanguageHeadingModelClassToJson(List<GetLanguageHeadingModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetLanguageHeadingModelClass {
    GetLanguageHeadingModelClass({
         this.id,
         this.languageId,
         this.langCategoryId,
         this.heading,
         this.subHeading,
    });

    int? id;
    int? languageId;
    int? langCategoryId;
    String? heading;
    List<SubHeading>? subHeading;

    factory GetLanguageHeadingModelClass.fromJson(Map<String, dynamic> json) => GetLanguageHeadingModelClass(
        id: json["id"],
        languageId: json["language_id"],
        langCategoryId: json["lang_category_id"],
        heading: json["heading"],
        subHeading: List<SubHeading>.from(json["sub_heading"].map((x) => SubHeading.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "language_id": languageId,
        "lang_category_id": langCategoryId,
        "heading": heading,
        "sub_heading": List<dynamic>.from(subHeading!.map((x) => x.toJson())),
    };
}

class SubHeading {
    SubHeading({
         this.id,
         this.langHeadId,
         this.subHeading,
    });

    int? id;
    int? langHeadId;
    String? subHeading;

    factory SubHeading.fromJson(Map<String, dynamic> json) => SubHeading(
        id: json["id"],
        langHeadId: json["lang_head_id"],
        subHeading: json["sub_heading"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "lang_head_id": langHeadId,
        "sub_heading": subHeading,
    };
}
