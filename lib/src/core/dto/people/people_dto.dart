// To parse this JSON data, do
//
//     final peopleDto = peopleDtoFromJson(jsonString);

import 'dart:convert';

PeopleDto peopleDtoFromJson(String str) => PeopleDto.fromJson(json.decode(str));

String peopleDtoToJson(PeopleDto data) => json.encode(data.toJson());

class PeopleDto {
  PeopleDto({
    this.address = '',
    this.id = 0,
    required this.name,
    this.phone = 0,
    required this.surname,
  });

  final String address;
  final int id;
  final String name;
  final int phone;
  final String surname;

  factory PeopleDto.fromJson(Map<String, dynamic> json) => PeopleDto(
        address: json["address"],
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        surname: json["surname"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "id": id,
        "name": name,
        "phone": phone,
        "surname": surname,
      };
}
