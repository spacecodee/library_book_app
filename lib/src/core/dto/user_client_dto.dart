// To parse this JSON data, do
//
//     final userRoleDto = userRoleDtoFromJson(jsonString);

import 'dart:convert';

import 'package:library_book_app/src/core/dto/people_dto.dart';

UserClientDto userRoleDtoFromJson(String str) => UserClientDto.fromJson(json.decode(str));

String userRoleDtoToJson(UserClientDto data) => json.encode(data.toJson());

class UserClientDto {
  UserClientDto({
    this.id,
    this.username,
    this.email,
    this.password,
    this.userRoleDto,
    this.peopleDto,
  });

  final int? id;
  final String? username;
  final String? email;
  final String? password;
  final UserClientDto? userRoleDto;
  final PeopleDto? peopleDto;

  factory UserClientDto.fromJson(Map<String, dynamic> json) => UserClientDto(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        userRoleDto: UserClientDto.fromJson(json["userRoleDto"]),
        peopleDto: PeopleDto.fromJson(json["peopleDto"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "password": password,
        "userRoleDto": userRoleDto?.toJson(),
        "peopleDto": peopleDto?.toJson(),
      };
}
