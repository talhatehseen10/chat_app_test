// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:chat_test_app/views/authentication/models/user_info.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  UserInfo? userInfo;
  String? accessToken;

  User({
    this.userInfo,
    this.accessToken,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userInfo: json["userInfo"] == null
            ? null
            : UserInfo.fromJson(json["userInfo"]),
        accessToken: json["accessToken"],
      );

  Map<String, dynamic> toJson() => {
        "userInfo": userInfo?.toJson(),
        "accessToken": accessToken,
      };
}
