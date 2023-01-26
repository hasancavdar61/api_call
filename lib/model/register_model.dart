// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  RegisterModel({
    required this.actionRegister,
  });

  ActionRegister actionRegister;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        actionRegister: ActionRegister.fromJson(json["action_register"]),
      );

  Map<String, dynamic> toJson() => {
        "action_register": actionRegister.toJson(),
      };
}

class ActionRegister {
  ActionRegister({
    required this.email,
    required this.id,
    required this.name,
    required this.createdAt,
  });

  String email;
  int id;
  String name;
  DateTime createdAt;

  factory ActionRegister.fromJson(Map<String, dynamic> json) => ActionRegister(
        email: json["email"],
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
      };
}
