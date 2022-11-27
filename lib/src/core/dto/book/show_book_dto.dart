import 'package:json_annotation/json_annotation.dart';

part 'show_book_dto.g.dart';

@JsonSerializable()
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

  factory ShowBookDto.fromJson(Map<String, dynamic> json) => _$ShowBookDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShowBookDtoToJson(this);
}
