// To parse this JSON data, do
//
//     final peopleDto = peopleDtoFromJson(jsonString);

import 'dart:convert';

PeopleDto peopleDtoFromJson(String str) => PeopleDto.fromJson(json.decode(str));

String peopleDtoToJson(PeopleDto data) => json.encode(data.toJson());

class PeopleDto {
  PeopleDto({
    this.id,
    this.name,
    this.surname,
    this.phone,
    this.address,
  });

  final int? id;
  final String? name;
  final String? surname;
  final int? phone;
  final String? address;

  factory PeopleDto.fromJson(Map<String, dynamic> json) => PeopleDto(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
        phone: json["phone"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "surname": surname,
        "phone": phone,
        "address": address,
      };
}
