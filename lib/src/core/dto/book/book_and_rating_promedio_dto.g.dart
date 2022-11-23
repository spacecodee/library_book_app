// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_and_rating_promedio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookAndRatingPromedioDto _$BookAndRatingPromedioDtoFromJson(
        Map<String, dynamic> json) =>
    BookAndRatingPromedioDto(
      author: json['author'] as String?,
      id: json['id'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      ratingPromedioBookDto: json['ratingPromedioBookDto'] == null
          ? null
          : RatingPromedioBookDto.fromJson(
              json['ratingPromedioBookDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookAndRatingPromedioDtoToJson(
        BookAndRatingPromedioDto instance) =>
    <String, dynamic>{
      'author': instance.author,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'ratingPromedioBookDto': instance.ratingPromedioBookDto,
    };
