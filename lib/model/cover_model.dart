// To parse this JSON data, do
//
//     final coverModel = coverModelFromJson(jsonString);

import 'dart:convert';

CoverModel coverModelFromJson(String str) => CoverModel.fromJson(json.decode(str));

String coverModelToJson(CoverModel data) => json.encode(data.toJson());

class CoverModel {
    CoverModel({
        required this.actionProductImage,
    });

    ActionProductImage actionProductImage;

    factory CoverModel.fromJson(Map<String, dynamic> json) => CoverModel(
        actionProductImage: ActionProductImage.fromJson(json["action_product_image"]),
    );

    Map<String, dynamic> toJson() => {
        "action_product_image": actionProductImage.toJson(),
    };
}

class ActionProductImage {
    ActionProductImage({
        required this.url,
    });

    String url;

    factory ActionProductImage.fromJson(Map<String, dynamic> json) => ActionProductImage(
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
    };
}
