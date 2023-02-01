// To parse this JSON data, do
//
//     final homeLanguageModelClass = homeLanguageModelClassFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<HomeLanguageModelClass> homeLanguageModelClassFromJson(String str) => List<HomeLanguageModelClass>.from(json.decode(str).map((x) => HomeLanguageModelClass.fromJson(x)));

String homeLanguageModelClassToJson(List<HomeLanguageModelClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeLanguageModelClass {
    HomeLanguageModelClass({
        required this.id,
        required this.languageTitle,
        required this.languageSubtitle,
        required this.languageDiscription,
        required this.languageImage,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String languageTitle;
    String languageSubtitle;
    LanguageDiscription languageDiscription;
    String languageImage;
    dynamic createdAt;
    dynamic updatedAt;

    factory HomeLanguageModelClass.fromJson(Map<String, dynamic> json) => HomeLanguageModelClass(
        id: json["id"],
        languageTitle: json["language_title"],
        languageSubtitle: json["language_subtitle"],
        languageDiscription: languageDiscriptionValues.map[json["language_discription"]]!,
        languageImage: json["language_image"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "language_title": languageTitle,
        "language_subtitle": languageSubtitle,
        "language_discription": languageDiscriptionValues.reverse[languageDiscription],
        "language_image": languageImage,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}

enum LanguageDiscription { EMPTY, PHP_PNG }

final languageDiscriptionValues = EnumValues({
    "": LanguageDiscription.EMPTY,
    "php.png": LanguageDiscription.PHP_PNG
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
