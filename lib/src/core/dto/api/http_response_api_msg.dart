// To parse this JSON data, do
//
//     final httpResponseApiDto = httpResponseApiDtoFromJson(jsonString);

import 'dart:convert';

HttpResponseApiDto httpResponseApiDtoFromJson(String str) => HttpResponseApiDto.fromJson(json.decode(str));

String httpResponseApiDtoToJson(HttpResponseApiDto data) => json.encode(data.toJson());

class HttpResponseApiDto {
  HttpResponseApiDto({
    this.data,
    this.localDate,
    this.message,
    this.status,
    this.statusCode,
  });

  final List<dynamic>? data;
  final DateTime? localDate;
  final String? message;
  final String? status;
  final int? statusCode;

  factory HttpResponseApiDto.fromJson(Map<String, dynamic> json) => HttpResponseApiDto(
        data: List<dynamic>.from(json["data"].map((x) => x)),
        localDate: DateTime.parse(json["localDate"]),
        message: json["message"],
        status: json["status"],
        statusCode: json["statusCode"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x)),
        "localDate":
            "${localDate?.year.toString().padLeft(4, '0')}-${localDate?.month.toString().padLeft(2, '0')}-${localDate?.day.toString().padLeft(2, '0')}",
        "message": message,
        "status": status,
        "statusCode": statusCode,
      };
}
