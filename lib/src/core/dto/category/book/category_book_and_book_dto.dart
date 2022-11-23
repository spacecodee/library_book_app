// To parse this JSON data, do
//
//     final categoryBookAndBookDto = categoryBookAndBookDtoFromJson(jsonString);

import 'dart:convert';

import 'package:library_book_app/src/core/dto/book/book_and_rating_promedio_dto.dart';

CategoryBookAndBookDto categoryBookAndBookDtoFromJson(String str) => CategoryBookAndBookDto.fromJson(json.decode(str));

String categoryBookAndBookDtoToJson(CategoryBookAndBookDto data) => json.encode(data.toJson());

class CategoryBookAndBookDto {
  CategoryBookAndBookDto({
    this.bookDto,
    this.id,
    this.name,
  });

  final List<BookAndRatingPromedioDto>? bookDto;
  final int? id;
  final String? name;

  factory CategoryBookAndBookDto.fromJson(Map<String, dynamic> json) => CategoryBookAndBookDto(
        bookDto: List<BookAndRatingPromedioDto>.from(json["bookDto"].map((x) => BookAndRatingPromedioDto.fromJson(x))),
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "bookDto": List<dynamic>.from(bookDto!.map((x) => x.toJson())),
        "id": id,
        "name": name,
      };
}
