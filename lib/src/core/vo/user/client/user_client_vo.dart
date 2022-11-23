// To parse this JSON data, do
//
//     final userClientVo = userClientVoFromJson(jsonString);

import 'dart:convert';

import 'package:library_book_app/src/core/dto/people/people_dto.dart';

UserClientVo userClientVoFromJson(String str) => UserClientVo.fromJson(json.decode(str));

String userClientVoToJson(UserClientVo data) => json.encode(data.toJson());

class UserClientVo {
  UserClientVo({
    required this.email,
    this.id = 0,
    required this.password,
    required this.peopleDto,
    required this.username,
  });

  final String email;
  final int id;
  final String password;
  final PeopleDto peopleDto;
  final String username;

  factory UserClientVo.fromJson(Map<String, dynamic> json) => UserClientVo(
        email: json["email"],
        id: json["id"],
        password: json["password"],
        peopleDto: PeopleDto.fromJson(json["peopleDto"]),
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "id": id,
        "password": password,
        "peopleDto": peopleDto.toJson(),
        "username": username,
      };
}
