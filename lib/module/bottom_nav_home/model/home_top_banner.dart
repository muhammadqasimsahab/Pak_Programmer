// To parse this JSON data, do
//
//     final homeTopBannerModeClass = homeTopBannerModeClassFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<HomeTopBannerModeClass> homeTopBannerModeClassFromJson(String str) => List<HomeTopBannerModeClass>.from(json.decode(str).map((x) => HomeTopBannerModeClass.fromJson(x)));

String homeTopBannerModeClassToJson(List<HomeTopBannerModeClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeTopBannerModeClass {
    HomeTopBannerModeClass({
        required this.id,
        required this.bannerTitle,
        required this.bannerSubtitle,
        required this.bannerDiscription,
        required this.bannerImage,
        required this.bannerDiscount,
        required this.courseId,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String bannerTitle;
    String bannerSubtitle;
    String bannerDiscription;
    String bannerImage;
    String bannerDiscount;
    String courseId;
    dynamic createdAt;
    dynamic updatedAt;

    factory HomeTopBannerModeClass.fromJson(Map<String, dynamic> json) => HomeTopBannerModeClass(
        id: json["id"],
        bannerTitle: json["banner_title"],
        bannerSubtitle: json["banner_subtitle"],
        bannerDiscription: json["banner_discription"],
        bannerImage: json["banner_image"],
        bannerDiscount: json["banner_discount"],
        courseId: json["course_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "banner_title": bannerTitle,
        "banner_subtitle": bannerSubtitle,
        "banner_discription": bannerDiscription,
        "banner_image": bannerImage,
        "banner_discount": bannerDiscount,
        "course_id": courseId,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
