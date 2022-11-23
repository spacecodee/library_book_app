// To parse this JSON data, do
//
//     final jwtDto = jwtDtoFromJson(jsonString);

import 'dart:convert';

JwtDto jwtDtoFromJson(String str) => JwtDto.fromJson(json.decode(str));

String jwtDtoToJson(JwtDto data) => json.encode(data.toJson());

class JwtDto {
  JwtDto({
    this.token = '',
  });

  final String token;

  factory JwtDto.fromJson(Map<String, dynamic> json) => JwtDto(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
