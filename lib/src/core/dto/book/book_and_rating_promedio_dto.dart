// To parse this JSON data, do
//
//     final bookAndRatingPromedioDto = bookAndRatingPromedioDtoFromJson(jsonString);

import 'dart:convert';

import 'package:library_book_app/src/core/dto/rating/book/rating_promedio_book_dto.dart';

BookAndRatingPromedioDto bookAndRatingPromedioDtoFromJson(String str) =>
    BookAndRatingPromedioDto.fromJson(json.decode(str));

String bookAndRatingPromedioDtoToJson(BookAndRatingPromedioDto data) => json.encode(data.toJson());

class BookAndRatingPromedioDto {
  BookAndRatingPromedioDto({
    this.author,
    this.id,
    this.image,
    this.name,
    this.ratingPromedioBookDto,
  });

  final String? author;
  final int? id;
  final String? image;
  final String? name;
  final RatingPromedioBookDto? ratingPromedioBookDto;

  factory BookAndRatingPromedioDto.fromJson(Map<String, dynamic> json) => BookAndRatingPromedioDto(
        author: json["author"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        ratingPromedioBookDto: RatingPromedioBookDto.fromJson(json["ratingPromedioBookDto"]),
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "id": id,
        "image": image,
        "name": name,
        "ratingPromedioBookDto": ratingPromedioBookDto?.toJson(),
      };
}
