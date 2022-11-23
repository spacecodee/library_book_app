// To parse this JSON data, do
//
//     final showBookDto = showBookDtoFromJson(jsonString);

import 'dart:convert';

ShowBookDto showBookDtoFromJson(String str) => ShowBookDto.fromJson(json.decode(str));

String showBookDtoToJson(ShowBookDto data) => json.encode(data.toJson());

class ShowBookDto {
  ShowBookDto({
    required this.author,
    required this.categoryName,
    required this.description,
    required this.globalRating,
    required this.id,
    required this.image,
    required this.name,
    required this.pages,
    required this.pdf,
    required this.rating,
  });

  final String author;
  final String categoryName;
  final String description;
  final int globalRating;
  final int id;
  final String image;
  final String name;
  final int pages;
  final String pdf;
  final int rating;

  factory ShowBookDto.fromJson(Map<String, dynamic> json) => ShowBookDto(
        author: json["author"],
        categoryName: json["categoryName"],
        description: json["description"],
        globalRating: json["globalRating"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        pages: json["pages"],
        pdf: json["pdf"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "categoryName": categoryName,
        "description": description,
        "globalRating": globalRating,
        "id": id,
        "image": image,
        "name": name,
        "pages": pages,
        "pdf": pdf,
        "rating": rating,
      };
}
