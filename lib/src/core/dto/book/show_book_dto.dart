import 'package:json_annotation/json_annotation.dart';

part 'show_book_dto.g.dart';

@JsonSerializable()
class ShowBookDto {
  ShowBookDto({
    this.author = '',
    this.categoryName = '',
    this.description = '',
    this.globalRating = 0,
    this.id = 0,
    this.image = '',
    this.name = '',
    this.pages = 0,
    this.pdf = '',
    this.rating = 0,
  });

  final String author;
  final String categoryName;
  final String description;
  final double globalRating;
  final int id;
  final String image;
  final String name;
  final int pages;
  final String pdf;
  final double rating;

  factory ShowBookDto.fromJson(Map<String, dynamic> json) => _$ShowBookDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShowBookDtoToJson(this);
}
