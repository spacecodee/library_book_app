// To parse this JSON data, do
//
//     final ratingPromedioBookDto = ratingPromedioBookDtoFromJson(jsonString);

import 'dart:convert';

RatingPromedioBookDto ratingPromedioBookDtoFromJson(String str) => RatingPromedioBookDto.fromJson(json.decode(str));

String ratingPromedioBookDtoToJson(RatingPromedioBookDto data) => json.encode(data.toJson());

class RatingPromedioBookDto {
  RatingPromedioBookDto({
    this.promedioRating,
    this.rating,
  });

  final int? promedioRating;
  final int? rating;

  factory RatingPromedioBookDto.fromJson(Map<String, dynamic> json) => RatingPromedioBookDto(
        promedioRating: json["promedioRating"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "promedioRating": promedioRating,
        "rating": rating,
      };
}
