// To parse this JSON data, do
//
//     final languageDetailModelClass = languageDetailModelClassFromJson(jsonString);

import 'dart:convert';

List<LanguageDetailModelClass> languageDetailModelClassFromJson(String str) => List<LanguageDetailModelClass>.from(json.decode(str).map((x) => LanguageDetailModelClass.fromJson(x)));

String languageDetailModelClassToJson(List<LanguageDetailModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LanguageDetailModelClass {
    LanguageDetailModelClass({
        required this.id,
        required this.languageId,
        required this.title,
    });

    int id;
    int languageId;
    String title;

    factory LanguageDetailModelClass.fromJson(Map<String, dynamic> json) => LanguageDetailModelClass(
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
