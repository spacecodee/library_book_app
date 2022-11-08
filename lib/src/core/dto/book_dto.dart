// To parse this JSON data, do
//
//     final bookDto = bookDtoFromJson(jsonString);

import 'dart:convert';

import 'package:library_book_app/src/core/dto/category_book_dto.dart';

BookDto bookDtoFromJson(String str) => BookDto.fromJson(json.decode(str));

String bookDtoToJson(BookDto data) => json.encode(data.toJson());

class BookDto {
  final int? id;
  final String name;
  final int pages;
  final String author;
  final String image;
  final String pdf;
  final String description;
  final CategoryBookDto? categoryBookDto;

  BookDto({
    this.id,
    required this.name,
    required this.pages,
    required this.author,
    required this.image,
    required this.pdf,
    required this.description,
    this.categoryBookDto,
  });

  factory BookDto.fromJson(Map<String, dynamic> json) => BookDto(
        id: json["id"],
        name: json["name"],
        pages: json["pages"],
        author: json["author"],
        image: json["image"],
        pdf: json["pdf"],
        description: json["description"],
        categoryBookDto: CategoryBookDto.fromJson(json["categoryBookDto"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "pages": pages,
        "author": author,
        "image": image,
        "pdf": pdf,
        "description": description,
        "categoryBookDto": categoryBookDto?.toJson(),
      };
}
