import 'package:json_annotation/json_annotation.dart';

part 'rating_promedio_book_dto.g.dart';

@JsonSerializable()
class RatingPromedioBookDto {
  RatingPromedioBookDto({
    this.promedioRating,
    this.rating,
  });

  final double? promedioRating;
  final double? rating;

  factory RatingPromedioBookDto.fromJson(Map<String, dynamic> json) => _$RatingPromedioBookDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RatingPromedioBookDtoToJson(this);

  @override
  String toString() {
    return 'RatingPromedioBookDto{promedioRating: $promedioRating, rating: $rating}';
  }
}
