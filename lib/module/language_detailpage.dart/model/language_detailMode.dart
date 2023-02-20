// To parse this JSON data, do
//
//     final languageDetailCategoryModelClass = languageDetailCategoryModelClassFromJson(jsonString);

import 'dart:convert';

List<LanguageDetailCategoryModelClass> languageDetailCategoryModelClassFromJson(String str) => List<LanguageDetailCategoryModelClass>.from(json.decode(str).map((x) => LanguageDetailCategoryModelClass.fromJson(x)));

String languageDetailCategoryModelClassToJson(List<LanguageDetailCategoryModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LanguageDetailCategoryModelClass {
    LanguageDetailCategoryModelClass({
         this.id,
         this.languageId,
         this.title,
    });

    int? id;
    int? languageId;
    String? title;

    factory LanguageDetailCategoryModelClass.fromJson(Map<String, dynamic> json) => LanguageDetailCategoryModelClass(
        id: json["id"],
        languageId: json["language_id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "language_id": languageId,
        "title": title,
    };
}
