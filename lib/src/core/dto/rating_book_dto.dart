// To parse this JSON data, do
//
//     final ratingBookDto = ratingBookDtoFromJson(jsonString);

import 'dart:convert';

import 'package:library_book_app/src/core/dto/book_dto.dart';
import 'package:library_book_app/src/core/dto/user_client_dto.dart';

RatingBookDto ratingBookDtoFromJson(String str) => RatingBookDto.fromJson(json.decode(str));

String ratingBookDtoToJson(RatingBookDto data) => json.encode(data.toJson());

class RatingBookDto {
  RatingBookDto({
    this.id,
    required this.ratingBook,
    required this.userClientDto,
    required this.bookDto,
  });

  final int? id;
  final int ratingBook;
  final UserClientDto userClientDto;
  final BookDto bookDto;

  factory RatingBookDto.fromJson(Map<String, dynamic> json) => RatingBookDto(
        id: json["id"],
        ratingBook: json["ratingBook"],
        userClientDto: UserClientDto.fromJson(json["userClientDto"]),
        bookDto: BookDto.fromJson(json["bookDto"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ratingBook": ratingBook,
        "userClientDto": userClientDto.toJson(),
        "bookDto": bookDto.toJson(),
      };
}
