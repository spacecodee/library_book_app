import 'package:json_annotation/json_annotation.dart';
import 'package:library_book_app/src/core/dto/rating/book/rating_promedio_book_dto.dart';

part 'book_and_rating_promedio_dto.g.dart';

@JsonSerializable()
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

  factory BookAndRatingPromedioDto.fromJson(Map<String, dynamic> json) => _$BookAndRatingPromedioDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BookAndRatingPromedioDtoToJson(this);

  @override
  String toString() {
    return 'BookAndRatingPromedioDto{author: $author, id: $id, image: $image, name: $name, ratingPromedioBookDto: $ratingPromedioBookDto}';
  }
}
