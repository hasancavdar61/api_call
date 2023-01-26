// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
    ProductModel({
        required this.product,
    });

    List<Product> product;

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        product: List<Product>.from(json["product"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "product": List<dynamic>.from(product.map((x) => x.toJson())),
    };
}

class Product {
    Product({
        required this.author,
        required this.cover,
        required this.createdAt,
        required this.description,
        required this.id,
        required this.name,
        required this.price,
        required this.sales,
        required this.slug,
        required this.likesAggregate,
    });

    String author;
    String cover;
    DateTime createdAt;
    String description;
    int id;
    String name;
    double price;
    int sales;
    String slug;
    LikesAggregate likesAggregate;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        author: json["author"],
        cover: json["cover"],
        createdAt: DateTime.parse(json["created_at"]),
        description: json["description"],
        id: json["id"],
        name: json["name"],
        price: json["price"]?.toDouble(),
        sales: json["sales"],
        slug: json["slug"],
        likesAggregate: LikesAggregate.fromJson(json["likes_aggregate"]),
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "cover": cover,
        "created_at": createdAt.toIso8601String(),
        "description": description,
        "id": id,
        "name": name,
        "price": price,
        "sales": sales,
        "slug": slug,
        "likes_aggregate": likesAggregate.toJson(),
    };
}

class LikesAggregate {
    LikesAggregate({
        required this.aggregate,
    });

    Aggregate aggregate;

    factory LikesAggregate.fromJson(Map<String, dynamic> json) => LikesAggregate(
        aggregate: Aggregate.fromJson(json["aggregate"]),
    );

    Map<String, dynamic> toJson() => {
        "aggregate": aggregate.toJson(),
    };
}

class Aggregate {
    Aggregate({
        required this.count,
    });

    int count;

    factory Aggregate.fromJson(Map<String, dynamic> json) => Aggregate(
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "count": count,
    };
}
