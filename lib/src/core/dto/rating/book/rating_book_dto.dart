import 'package:json_annotation/json_annotation.dart';

part 'rating_book_dto.g.dart';

@JsonSerializable()
class RatingBookDto {
  RatingBookDto({
    this.ratingBook,
    this.bookId,
    this.username,
  });

  final double? ratingBook;
  final int? bookId;
  final String? username;

  factory RatingBookDto.fromJson(Map<String, dynamic> json) => _$RatingBookDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RatingBookDtoToJson(this);
}
