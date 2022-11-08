// To parse this JSON data, do
//
//     final userRoleDto = userRoleDtoFromJson(jsonString);

import 'dart:convert';

UserRoleDto userRoleDtoFromJson(String str) => UserRoleDto.fromJson(json.decode(str));

String userRoleDtoToJson(UserRoleDto data) => json.encode(data.toJson());

class UserRoleDto {
  UserRoleDto({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;

  factory UserRoleDto.fromJson(Map<String, dynamic> json) => UserRoleDto(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
