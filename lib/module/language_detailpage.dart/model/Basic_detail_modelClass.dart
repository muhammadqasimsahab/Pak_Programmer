// To parse this JSON data, do
//
//     final basicDetailModelClass = basicDetailModelClassFromJson(jsonString);

import 'dart:convert';

List<BasicDetailModelClass> basicDetailModelClassFromJson(String str) => List<BasicDetailModelClass>.from(json.decode(str).map((x) => BasicDetailModelClass.fromJson(x)));

String basicDetailModelClassToJson(List<BasicDetailModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BasicDetailModelClass {
  BasicDetailModelClass({
    required this.id,
    required this.languageId,
    required this.langHeadId,
    required this.subHeadId,
    required this.heading,
    required this.discription,
    required this.image,
    required this.code,
  });

  int id;
  int languageId;
  int langHeadId;
  int subHeadId;
  String heading;
  String discription;
  String image;
  String code;

  factory BasicDetailModelClass.fromJson(Map<String, dynamic> json) => BasicDetailModelClass(
    id: json["id"],
    languageId: json["language_id"],
    langHeadId: json["lang_head_id"],
    subHeadId: json["sub_head_id"],
    heading: json["heading"],
    discription: json["discription"],
    image: json["image"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "language_id": languageId,
    "lang_head_id": langHeadId,
    "sub_head_id": subHeadId,
    "heading": heading,
    "discription": discription,
    "image": image,
    "code": code,
  };
}
