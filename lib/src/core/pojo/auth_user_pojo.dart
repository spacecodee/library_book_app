// To parse this JSON data, do
//
//     final authUserPojo = authUserPojoFromJson(jsonString);

import 'dart:convert';

AuthUserPojo authUserPojoFromJson(String str) => AuthUserPojo.fromJson(json.decode(str));

String authUserPojoToJson(AuthUserPojo data) => json.encode(data.toJson());

class AuthUserPojo {
  AuthUserPojo({
    required this.password,
    required this.username,
  });

  final String password;
  final String username;

  factory AuthUserPojo.fromJson(Map<String, dynamic> json) => AuthUserPojo(
        password: json["password"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "password": password,
        "username": username,
      };
}
