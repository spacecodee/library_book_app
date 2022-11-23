// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_book_and_book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryBookAndBookDto _$CategoryBookAndBookDtoFromJson(
        Map<String, dynamic> json) =>
    CategoryBookAndBookDto(
      bookDto: (json['bookDto'] as List<dynamic>?)
          ?.map((e) =>
              BookAndRatingPromedioDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoryBookAndBookDtoToJson(
        CategoryBookAndBookDto instance) =>
    <String, dynamic>{
      'bookDto': instance.bookDto,
      'id': instance.id,
      'name': instance.name,
    };
