import 'package:json_annotation/json_annotation.dart';
import 'package:library_book_app/src/core/dto/book/book_and_rating_promedio_dto.dart';

part 'category_book_and_book_dto.g.dart';

@JsonSerializable()
class CategoryBookAndBookDto {
  CategoryBookAndBookDto({
    this.bookDto,
    this.id,
    this.name,
  });

  late final List<BookAndRatingPromedioDto>? bookDto;
  late final int? id;
  late final String? name;

  factory CategoryBookAndBookDto.fromJson(Map<String, dynamic> json) => _$CategoryBookAndBookDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryBookAndBookDtoToJson(this);

  @override
  String toString() {
    return 'CategoryBookAndBookDto{bookDto: $bookDto, id: $id, name: $name}';
  }
}
