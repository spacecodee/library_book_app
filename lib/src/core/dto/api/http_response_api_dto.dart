// To parse this JSON data, do
//
//     final httpResponseApiDto = httpResponseApiDtoFromJson(jsonString);

import 'dart:convert';

HttpResponseApiDto httpResponseApiDtoFromJson(String str) => HttpResponseApiDto.fromJson(json.decode(str));

String httpResponseApiDtoToJson(HttpResponseApiDto data) => json.encode(data.toJson());

class HttpResponseApiDto {
  HttpResponseApiDto({
    this.message = '',
    this.status = '',
    this.statusCode = 0,
  });

  final String message;
  final String status;
  final int statusCode;

  factory HttpResponseApiDto.fromJson(Map<String, dynamic> json) => HttpResponseApiDto(
        message: json["message"],
        status: json["status"],
        statusCode: json["statusCode"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "statusCode": statusCode,
      };
}
