// To parse this JSON data, do
//
//     final categoryBookDto = categoryBookDtoFromJson(jsonString);

import 'dart:convert';

CategoryBookDto categoryBookDtoFromJson(String str) => CategoryBookDto.fromJson(json.decode(str));

String categoryBookDtoToJson(CategoryBookDto data) => json.encode(data.toJson());

class CategoryBookDto {
  final int? id;
  final String name;

  CategoryBookDto({
    this.id,
    required this.name,
  });

  factory CategoryBookDto.fromJson(Map<String, dynamic> json) => CategoryBookDto(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };

  @override
  String toString() {
    return 'CategoryBookDto{id: $id, name: $name}';
  }
}
