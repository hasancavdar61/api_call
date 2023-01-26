// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        required this.actionLogin,
    });

    ActionLogin actionLogin;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        actionLogin: ActionLogin.fromJson(json["action_login"]),
    );

    Map<String, dynamic> toJson() => {
        "action_login": actionLogin.toJson(),
    };
}

class ActionLogin {
    ActionLogin({
        required this.message,
        required this.token,
    });

    String message;
    String token;

    factory ActionLogin.fromJson(Map<String, dynamic> json) => ActionLogin(
        message: json["message"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "token": token,
    };
}
